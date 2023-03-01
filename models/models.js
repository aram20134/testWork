const { DataTypes } = require("sequelize");
const sequelize = require("../db");

const User = sequelize.define('users', {
	id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
	name: { type: DataTypes.STRING },
	secondName: {type: DataTypes.STRING },
	password: { type: DataTypes.STRING },
	email: { type: DataTypes.STRING, validate: { isEmail:true } },
	sex: { type: DataTypes.STRING, validate: {isIn: [['Мужчина', 'Женщина']]} },
	photo: { type: DataTypes.STRING },
	// Дата регистрации - createdAt, создаётся автоматически библиотекой
})

module.exports = {
	User
}