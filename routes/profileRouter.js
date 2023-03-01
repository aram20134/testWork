const Router = require('express')
const profileController = require('../controllers/profileController')
const auth = require('../middleware/auth')
const router = new Router()

router.put('/:id', auth, profileController.editUser)
router.get('/profiles', profileController.allUsersPagination)
router.get('/:id', profileController.getUser)
// router.post('/login', userController.login)

module.exports = router