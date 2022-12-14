const uuid = require("uuid");
const path = require("path");
const {Clothes, ClothesInfo} = require("../models/models");
const ApiError = require("../error/ApiError");

class ClothesController {
    async create(req, res, next) {
        try {
            let {name, price, brandId, typeId, info} = req.body;
            const {img} = req.files;
            let fileName = uuid.v4() + ".jpg";
            await img.mv(path.resolve(__dirname, '..', 'static', fileName))

            const clothes = await Clothes.create({name, price, brandId, typeId, img: fileName});

            if (info) {
                info = JSON.parse(info);
                info.forEach(i => ClothesInfo.create({
                    //SQL feature/bug clothes == clothe, this is the reason why clotheId: clothes.id
                    title: i.title, description: i.description, clotheId: clothes.id
                }))
            }

            return res.json(clothes)
        } catch (e) {
            next(ApiError.badRequest(e.message))
        }
    }

    async getAll(req, res) {
        let {brandId, typeId, limit, page} = req.query;
        page = page || 1
        limit = parseInt(limit) || 10
        let offset = page * limit - limit
        let clothes
        if (!brandId && !typeId) {
            clothes = await Clothes.findAndCountAll({limit, offset})
        }
        if (brandId && !typeId) {
            clothes = await Clothes.findAndCountAll({where: {brandId}, limit, offset})
        }
        if (!brandId && typeId) {
            clothes = await Clothes.findAndCountAll({where: {typeId}, limit, offset})
        }
        if (brandId && typeId) {
            clothes = await Clothes.findAndCountAll({where: {brandId, typeId}, limit, offset})
        }
        return res.json(clothes)

    }

    async getOne(req, res) {
        const {id} = req.params
        const clothes = await Clothes.findOne({
            where: {id}, include: [{model: ClothesInfo, as: 'info'}]
        },)
        return res.json(clothes)
    }
}

module.exports = new ClothesController()