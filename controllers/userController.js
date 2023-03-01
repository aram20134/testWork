const ApiError  = require('../error/apiError');
const { User } = require('../models/models');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const signJWT = ({id, name, secondName, email, photo, sex}) => {
	return jwt.sign(
		{id, name, secondName, email, photo, sex},
		process.env.SECRET_KEY,
		{expiresIn: '256h'}
	)
}

class UserController {
	async register (req, res, next) {
		try {
			const {name, email, password} = req.body

			if (!name || !email || !password) {
				return next(ApiError.badRequest('Получены не все значения!'))
			}
			const hashPassword = await bcrypt.hash(password, 4)
			const user = await User.create({name, email, password:hashPassword})

			return res.json({message: 'Пользователь успешно создан'})
		} catch (e) {
			next(ApiError.badRequest(e.message))
		}
	}

	async login (req, res, next) {
		try {
			const {email, password} = req.body
			if (!email || !password) {
				return next(ApiError.badRequest('Получены не все значения!'))
			}
			const user = await User.findOne({where:{email}})
			const comparePassword = bcrypt.compareSync(password, user.password)
			if (!comparePassword) {
				return next(ApiError.badRequest('Неверный пароль'))
			}
			const token = signJWT(user)

			return res.json(token)
		} catch (e) {
			next(ApiError.badRequest(e.message))
		}
	}
}

module.exports = new UserController()