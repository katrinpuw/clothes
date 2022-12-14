import React from 'react';
import {Card, Col, Image} from "react-bootstrap";
import logo from "../assets/favicon.ico"
import {useNavigate} from "react-router-dom";
import {DEVICE_ROUTE} from "../utils/consts";

const DeviceItem = ({device}) => {
    const navigate = useNavigate()
    console.log(navigate)
    return (
        <Col md={3} className={"mt-3"} onClick={() => navigate(DEVICE_ROUTE + '/' + device.id)}>
            <Card style={{cursor: "pointer", borderColor: 'rgba(82,82,82,0.11)', boxShadow: '7px 7px 12px -9px rgba(34, 60, 80, 0.25)'}}>
                <Image className={"align-self-center"} width={150}
                       src={process.env.REACT_APP_API_URL + device.img}/>
                <div className={"d-flex align-items-center justify-content-center text-center mt-3"} style={{height: "100%"}}>
                    {device.name}
                </div>
                <div className={"text-black-50 d-flex justify-content-around align-items-end text-center mb-3"} style={{height: "100%"}}>
                    <div style={{fontWeight: "bold", color: "darkslategray"}}>
                        {device.brand}
                    </div>
                    <div className={"d-flex"}>
                        <div className={"d-flex align-items-center"}>
                            <div style={{fontWeight: "bold", paddingTop: 4, color: "darkred"}}>
                                NEW!
                            </div>
                            {/*<Image className={"ms-1"} width={18} height={18} src={logo}/>*/}
                        </div>
                    </div>
                </div>
            </Card>
        </Col>
    );
};

export default DeviceItem;
