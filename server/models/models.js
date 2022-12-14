const sequelize = require("../db");
const DataTypes = require("sequelize");

const User = sequelize.define('user', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    email: {type: DataTypes.STRING, unique: true},
    password: {type: DataTypes.STRING},
    role: {type: DataTypes.STRING, defaultValue: "USER"},
})

const Clothes = sequelize.define('clothes', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING, unique: true, allowNull: false},
    price: {type: DataTypes.STRING, allowNull: false},
    img: {type: DataTypes.STRING, allowNull: false}
})

const Type = sequelize.define('type', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING, unique: true, allowNull: false}
})

const Brand = sequelize.define('brand', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING, unique: true, allowNull: false}
})

const ClothesInfo = sequelize.define('clothes_info', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING, allowNull: false},
    description: {type: DataTypes.STRING, allowNull: false}
})

const TypeBrand = sequelize.define('type_brand', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true}
})

//////////////////////////////////////
//       Метод создания связи       //
//////////////////////////////////////
// Clothes.hasOne(ClothesInfo);       //
// ClothesInfo.belongsTo(Clothes);    //
//////////////////////////////////////

Type.hasMany(Clothes);
Clothes.belongsTo(Type);

Brand.hasMany(Clothes);
Clothes.belongsTo(Brand);

Clothes.hasMany(ClothesInfo, {as: 'info'});
ClothesInfo.belongsTo(Clothes);

Type.belongsToMany(Brand, {through: TypeBrand});
Brand.belongsToMany(Type, {through: TypeBrand});

module.exports = {
    User,
    Clothes,
    Type,
    Brand,
    TypeBrand,
    ClothesInfo
}
