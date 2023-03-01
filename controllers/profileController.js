const uuid = require('uuid')
const path = require('path')
const ApiError = require('../error/apiError');
const { User } = require('../models/models');


class ProfileController {
  async editUser (req, res, next) {
    try {
      const formData = req.body
      const {id} = req.params
      
      if (id != req.user.id) {
        return next(ApiError.forbiden('Токен не совпадает с пользователем'))
      }
      if (!formData) {
        return next(ApiError.badRequest('Значения не получены'))
      }
      var fileName = null
      if (req.files) {
        const {photo} = req.files
        const fileExt = photo.name.split('.').pop()
        if (fileExt !== 'jpg' || fileExt !== 'png' || fileExt !== 'jpeg') {
          return next(ApiError.badRequest('Неверное расширение файла'))
        }
        fileName = uuid.v4() + '.' + fileExt
        photo.mv(path.resolve(__dirname, '..', 'static/userProfiles', fileName))
        await User.update({name: formData?.name, secondName: formData?.secondName, sex: formData?.sex, email: formData?.email, photo: fileName}, {where:{id}})
      } else {
        await User.update({name: formData?.name, secondName: formData?.secondName, sex: formData?.sex, email: formData?.email}, {where:{id}})
      }

      res.json({message:'Пользователь успешно обновлен'})
    } catch (e) {
      next(ApiError.badRequest(e.message))
    }
  }
  async getUser (req, res, next) {
    try {
      const {id} = req.params

      const user = await User.findOne({where:{id}, attributes: {exclude: ['password']}}) 

      res.json(user)
    } catch (e) {
      next(ApiError.badRequest(e.message))
    }
  }
  async allUsersPagination (req, res, next) {
    try {
      const {page} = req.query
      if (!page) {
        return next(ApiError.badRequest('Страница не получена'))
      }
      const limit = 10
      var offset = Number(page) === 1 ? 0 : limit * (page - 1)

      const users = await User.findAll({limit, offset, order:[['createdAt', 'DESC']]})
      res.json(users)
    } catch (e) {
      next(ApiError.badRequest(e.message))
    }
  }
}

module.exports = new ProfileController()