<%--
  Created by IntelliJ IDEA.
  User: 王依泉
  Date: 2019/7/6
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>笔记本电脑详细参数</title>

    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta name="applicable-device" content="pc">

    <link rel="alternate" media="only screen and(max-width:640px)"
          href="https://wap.zol.com.cn/1236/1235182/param.html"/>
    <script>(function () {
        var a = 1, d = "https://wap.zol.com.cn/1236/1235182/param.html", b = document.cookie, c = document.referrer;
        b && b.match(/mobile_agent_global_dapter=([^;$]+)/) && (a = b.match(/mobile_agent_global_dapter=([^;$]+)/)[1]);
        if (1 === a && "" !== d && (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || /MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent)) && 0 > window.location.href.indexOf("?via=")) {
            a = new Date;
            c = "" === c ? "none" : -1 < c.indexOf("?") ? c + "&pcjump=1" : c + "?pcjump=1";
            b && (a.setDate(a.getDate() + 1), document.cookie = "PC2MRealRef=" + escape(c) + ";expires=" + a.toGMTString() +
                "; domain=.zol.com.cn; path=/");
            try {
                /Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent) && (window.location.href = d)
            } catch (e) {
            }
        }
    })();</script>
    <%--<link href="http://s.zol-img.com.cn/d/Pro/Pro_seriesParam_v4.css?v=43515" rel="stylesheet"/>--%>
<%--    <link href="${pageContext.request.contextPath}/css/pro_seriesParam_v4.css?v=43515" rel="stylesheet">--%>

    <script type="text/javascript" src="http://icon.zol-img.com.cn/swfobject.js"></script>
    <script type="text/javascript" src="http://p.zol-img.com.cn/detail_ad/detail.js"></script>
    <script type="text/javascript" src="http://p.zol-img.com.cn/detail_ad/detail_16.js"></script>
    <script type="text/javascript" src="http://p.zol-img.com.cn/detail_ad/detail_16_223.js"></script>
    <script type="text/javascript">
        <!--
        var pageType = 'Series';
        var subPageType = 'Param';
        var subcateId = '16';
        var manuId = '223';
        var proId = '1235182';
        var mainId = '1235182';
        var seriesId = '26292';
        var pv_subcatid = subcateId;
        var _PRO_ = {
            pageType: 'Series',
            subPageType: 'Param',
            proId: '',
            manuId: '223',
            subcateId: '16',
            seriesId: '26292',
            subcateName: '笔记本电脑',
            manuName: '惠普',
        }
        //-->
    </script>
    <base target="_blank"/>
</head>

<body>


<div class="wrapper clearfix">
    <div class="section">

        <div class="mod_bd mod_series_param">
            <div id="seriesParamTableFixed1">

                <%--===============传输列表名称 productP productListP==============--%>

                <table class="series_param_detail">
                    <tr class="nohover base_tr">
                        <th>型号</th>

                        <%--===============================--%>
                        <%--                        <c:forEach var="item" items="${productListP}">
                                                    <c:choose>
                                                        <c:when test="${item.pName == null}">
                                                            <td class="pro_name"></td>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td class="pro_name">${item.pName}</td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>--%>
                        <%--===============--%>
                        <c:forEach begin="1" end="${productListP.size()}">
                            <td class="pro_name">${productP.pName}</td>
                        </c:forEach>
                        <%--======================================--%>


                    </tr>
                </table>
            </div>

            <div id="seriesParamTableFixed2">
                <table class="series_param_detail">
                    <tr class="nohover base_tr">
                        <th>价格/商家</th>

                        <%--==============================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pPrice == null}">
                                    <td>
                                        <div class="price_td">
                                            <span class="price"><b class=""></b></span>
                                            <span class="date"></span>
                                        </div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>
                                        <div class="price_td">
                                            <span class="price">￥<b class="">${item.pPrice}</b></span>

<%--
                                        <span class="date">${item.publishTime}</span>
--%>

                                        </div>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <%--====================================--%>

                    </tr>
                </table>
            </div>
            <div id="seriesParamTableBox">
                <table class="series_param_detail colums_10" id="seriesParamTable">

                    <tr class="nohover base_tr">
                        <th data-num="param1_1">型号</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td class="pro_name">${productP.pName}</td>
                        </c:forEach>
                        <%--====================================--%>
                    </tr>

                    <tr class="nohover base_tr">
                        <th data-num="param1_2">图片</th>


                        <c:forEach begin="1" end="${productListP.size()}">
                            <td><a href="${pageContext.request.contextPath}/img/${productP.pPicture}"><img width="80"
                                                                                                           height="60"></a>
                            </td>
                        </c:forEach>
                        <%--====================================--%>

                    </tr>

                    <tr class="nohover base_tr">
                        <th data-num="param1_3">价格/商家</th>
                        <%--==============================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCode== null}">
<%--
                                <c:when test="${item.pCode== null}">
--%>
                                    <td>
                                        <div class="price_td">
                                            <span class="price"><b class=""></b></span>
                                            <span class="date"></span>
                                        </div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>
                                        <div class="price_td">
                                            <span class="price">￥<b class="">${item.pPrice}</b></span>
<%--
                                            <span class="date">${item.publishTime}</span>
--%>
                                        </div>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <%--====================================--%>
                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'1"><span>基本参数</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_1_1'>上市时间</th>

                        <%--==============================--%>
                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.publishTime}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_1_2'>产品类型</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pType}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_1_3'>产品定位</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pPosition}</td>
                        </c:forEach>
                        <%--======================================--%>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_1_4'>操作系统</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pOS}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_1_5'>主板芯片组</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pChipset}</td>
                        </c:forEach>
                        <%--======================================--%>
                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'2"><span>处理器</span></th>
                    </tr>
                    <tr class=''>
                        <th data-num='param_2_6'>CPU系列</th>

                        <%--===============================================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCPUSeries == null}">
                                    <td></td>
                                </c:when>
                                <c:otherwise>
                                    <td>${item.pCPUSeries}</td>

                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <%--==============================--%>
                    </tr>
                    <tr class=''>
                        <th data-num='param_2_7'>CPU型号</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCPUType == null}">
                                    <td></td>
                                </c:when>
                                <c:otherwise>
                                    <td>${item.pCPUType}</td>

                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <%--==============================--%>

                    </tr>
                    <tr class=''>
                        <th data-num='param_2_8'>CPU主频</th>

                        <%--===============================================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCPUHZ == null}">
                                    <td></td>
                                </c:when>
                                <c:otherwise>
                                    <td>${item.pCPUHZ}</td>

                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                    </tr>
                    <tr class=''>
                        <th data-num='param_2_9'>最高睿频</th>

                        <%--===============================================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCPUMHZ == null}">
                                    <td></td>
                                </c:when>
                                <c:otherwise>
                                    <td>${item.pCPUMHZ}</td>

                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <%--==============================--%>
                        <%--======================================--%>

                    </tr>
                    <tr class=''>
                        <th data-num='param_2_10'>核心/线程数</th>

                        <%--===============================================--%>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCPUAmount == null&&item.pTread}">
                                    <td></td>
                                </c:when>
                                <c:otherwise>
                                    <td>${item.pCPUAmount}核心/${item.pTread}线程</td>

                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                    </tr>
                    <tr class=''>
                        <th data-num='param_2_11'>三级缓存</th>


                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCache == null}">
                                    <td class="pro_pCache"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pCache">${item.pCache}MB</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>


                    </tr>
                    <tr class='same'>
                        <th data-num='param_2_12'>总线规格</th>

                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pBus == null}">
                                    <td class="pro_pBus"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pBus">${item.pBus}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_2_13'>核心架构</th>


                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pStructure == null}">
                                    <td class="pro_pStructure"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pStructure">${item.pStructure}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_2_14'>制程工艺</th>

                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pCraft == null}">
                                    <td class="pro_pCraft"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pCraft">${item.pCraft}nm</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_2_15'>功耗</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pConsumption == null}">
                                    <td class="pro_pConsumption"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pConsumption">${item.pConsumption}W</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'3"><span>存储设备</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_3_16'>内存容量</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pRAM == null}">
                                    <td class="pro_pRam"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pRam">${item.pRAM}G</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_3_17'>内存类型</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pRAM == null}">
                                    <td class="pro_pRamType"></td>
                                    pRamType
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pRamType">LPDDR3（低功耗版）${item.pRAMType}MHz</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_3_18'>硬盘容量</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pSSD == null}">
                                    <td class="pro_pSSD"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pSSD">${item.pSSD}GB</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_3_19'>硬盘描述</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pROMDescription == null}">
                                    <td class="pro_pROMDescription"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pROMDescription">${item.pROMDescription}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class='same'>



                        <th data-num='param_3_20'>光驱类型</th>

                        <c:forEach begin="1" end="${productListP.size()}">
<%--
                            <td class="pro_pCD">${productP.pCD}</td>
--%>
                        </c:forEach>
                        <%--======================================--%>
                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'4"><span>显示屏</span></th>
                    </tr>
                    <%--***********************--%>


                    <tr class='same'>
                        <th data-num='param_4_21'>触控屏</th>

                        <%--==============================--%>
                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pTouch}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_4_22'>屏幕尺寸</th>
                        <%--==============================--%>
                        <c:forEach begin="1" end="${productListP.size()}">
                        <td>${productP.pScreenSize}</td>
                        </c:forEach>

                        <%--                </tr>
                                        <tr class='same'>
                                            <th data-num='param_4_23'>显示比例</th>

                                            &lt;%&ndash;==============================&ndash;%&gt;
                                            <c:forEach begin="1" end="${productListP.size()}">
                                                <td>${productP.}</td>
                                            </c:forEach>

                                        </tr>--%>
                    <tr class='same'>
                        <th data-num='param_4_24'>屏幕分辨率</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td class="pro_pScreenResolution">${productP.pScreenResolution}</td>
                        </c:forEach>

                    </tr>
                    <tr class=''>
                        <th data-num='param_4_25'>屏幕技术</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td class="pro_pTechnology">${productP.pTechnology}</td>
                        </c:forEach>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'5"><span>显卡</span></th>
                    </tr>


                    <%--*************************--%>

                    <tr class=''>
                        <th data-num='param_5_26'>显卡类型</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pGPUType == null}">
                                    <td class="pro_pGPUType"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pGPUType">${item.pGPUType}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class=''>
                        <th data-num='param_5_27'>显卡芯片</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pGPUName== null}">
                                    <td class="pro_pGPUName"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pGPUName">${item.pGPUName}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class=''>
                        <th data-num='param_5_28'>显存容量</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pGPURAM== null}">
                                    <td class="pro_pGPURam"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pGPURam">${item.pGPURAM}G</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class=''>
                        <th data-num='param_5_29'>显存类型</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pGDDR== null}">
                                    <td class="pro_pGDDR"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pGDDR">${item.pGDDR}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class=''>
                        <th data-num='param_5_30'>显存位宽</th>
                        <c:forEach var="item" items="${productListP}">
                            <c:choose>
                                <c:when test="${item.pGPUBit== null}">
                                    <td class="pro_pGPUbit"></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="pro_pGPUbit">${item.pGPUBit}</td>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'6"><span>多媒体设备</span></th>
                    </tr>


                    <%--88888888888888888888888888888888888888888888--%>
                    <tr class='same'>
                        <th data-num='param_6_31'>摄像头</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pCamera}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_6_32'>音频系统</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pAudio}</td>
                        </c:forEach>
                        <%--======================================--%>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_6_33'>扬声器</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pSpeaker}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_6_34'>麦克风</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pMike}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'7"><span>网络通信</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_7_35'>无线网卡</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pWlan}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_7_36'>有线网卡</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pLan}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_7_37'>蓝牙</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pBluetooth}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'8"><span>I/O接口</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_8_38'>数据接口</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pDataInterface}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_8_39'>视频接口</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pAudioInterface}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_8_40'>音频接口</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pVideoInterface}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_8_41'>其它接口</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pOtherInterface}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'9"><span>输入设备</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_9_42'>指取设备</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pFingeringEquipment}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_9_43'>键盘描述</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pKeyboard}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'10"><span>电源描述</span></th>
                    </tr>
                    <tr class=''>
                        <th data-num='param_10_44'>电池类型</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pBatteryType}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_10_45'>续航时间</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pDuration}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class=''>
                        <th data-num='param_10_46'>电源适配器</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pPowerAdapter}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'11"><span>外观</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_47'>笔记本重量</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pWeight}kg</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_48'>长度</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pLengh}mm</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_49'>宽度</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pWidth}mm</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_50'>厚度</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pThickness}mm</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_51'>外壳材质</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pShellMaterial}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_11_52'>外壳描述</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pShellDescription}</td>
                        </c:forEach>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'12"><span>其他</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_12_53'>安全性能</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pSafety}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_12_54'>散热系统</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pDissipation}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_12_55'>附带软件</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pSoftware}</td>
                        </c:forEach>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'13"><span>笔记本附件</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_13_56'>包装清单</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pPackagingList}</td>
                        </c:forEach>
                        <%--======================================--%>

                    </tr>
                    <tr class="nohover param_type_tr">
                        <th class="param_type" colspan="11" data-num="param2_'14"><span>保修信息</span></th>
                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_57'>保修政策</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pGuarantee}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_58'>质保时间</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pWarranty}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_59'>质保备注</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pWarrantyRemark}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_60'>客服电话</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pTel}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_61'>电话备注</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pTelRemark}</td>
                        </c:forEach>

                    </tr>
                    <tr class='same'>
                        <th data-num='param_14_62'>详细内容</th>

                        <c:forEach begin="1" end="${productListP.size()}">
                            <td>${productP.pDatail}</td>
                        </c:forEach>





                    </tr>
                    <tr class="nohover base_tr">
                        <th data-num="param3_1">型号</th>
                        <c:forEach begin="1" end="${productListP.size()}">
                            <td class="pro_name">${productP.pName}</td>
                        </c:forEach>
                    </tr>
                </table>
            </div>
            <div class="filter_btn"><input id="mark_btn" type="button" value="只显示我点击过的项"></div>


        </div>
    </div>
</div>


<div id="seriesParamTableFixed3">
    <table class="series_param_detail" id="seriesParamTable2">
        <tbody>
        <tr class="nohover base_tr">
            <th data-num="param1_1">型号</th>
        </tr>
        <tr class="nohover base_tr">
            <th data-num="param1_2">图片</th>
        </tr>
        <tr class="nohover base_tr">
            <th data-num="param1_3">价格/商家</th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_1"><span>基本参数</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_1_1"><span>上市时间</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_1_2"><span>产品类型</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_1_3"><span>产品定位</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_1_4"><span>操作系统</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_1_5"><span>主板芯片组</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_2"><span>处理器</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_6"><span>CPU系列</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_7"><span>CPU型号</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_8"><span>CPU主频</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_9"><span>最高睿频</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_10"><span>核心/线程数</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_2_11"><span>三级缓存</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_2_12"><span>总线规格</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_2_13"><span>核心架构</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_2_14"><span>制程工艺</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_2_15"><span>功耗</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_3"><span>存储设备</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_3_16"><span>内存容量</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_3_17"><span>内存类型</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_3_18"><span>硬盘容量</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_3_19"><span>硬盘描述</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_3_20"><span>光驱类型</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_4"><span>显示屏</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_4_21"><span>触控屏</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_4_22"><span>屏幕尺寸</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_4_23"><span>显示比例</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_4_24"><span>屏幕分辨率</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_4_25"><span>屏幕技术</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_5"><span>显卡</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_5_26"><span>显卡类型</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_5_27"><span>显卡芯片</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_5_28"><span>显存容量</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_5_29"><span>显存类型</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_5_30"><span>显存位宽</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_6"><span>多媒体设备</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_6_31"><span>摄像头</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_6_32"><span>音频系统</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_6_33"><span>扬声器</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_6_34"><span>麦克风</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_7"><span>网络通信</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_7_35"><span>无线网卡</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_7_36"><span>有线网卡</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_7_37"><span>蓝牙</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_8"><span>I/O接口</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_8_38"><span>数据接口</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_8_39"><span>视频接口</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_8_40"><span>音频接口</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_8_41"><span>其它接口</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_9"><span>输入设备</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_9_42"><span>指取设备</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_9_43"><span>键盘描述</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_10"><span>电源描述</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_10_44"><span>电池类型</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_10_45"><span>续航时间</span></th>
        </tr>
        <tr class="nohover ">
            <th data-num="param_10_46"><span>电源适配器</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_11"><span>外观</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_47"><span>笔记本重量</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_48"><span>长度</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_49"><span>宽度</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_50"><span>厚度</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_51"><span>外壳材质</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_11_52"><span>外壳描述</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_12"><span>其他</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_12_53"><span>安全性能</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_12_54"><span>散热系统</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_12_55"><span>附带软件</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_13"><span>笔记本附件</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_13_56"><span>包装清单</span></th>
        </tr>
        <tr class="nohover param_type_tr">
            <th class="param_type" data-num="param2_14"><span>保修信息</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_57"><span>保修政策</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_58"><span>质保时间</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_59"><span>质保备注</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_60"><span>客服电话</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_61"><span>电话备注</span></th>
        </tr>
        <tr class="nohover same">
            <th data-num="param_14_62"><span>详细内容</span></th>
        </tr>
        <tr class="nohover base_tr">
            <th data-num="param3_1">型号</th>
        </tr>
        </tbody>
    </table>
</div>
<div id="seriesParamTableFixed4">
    <div class="param_config_table">
        <div class="series_param_config" data-num="param1_1">型号</div>
        <div class="series_param_config" style="display:none" data-num="param1_3">价格/商家</div>
    </div>
</div>
<script src="http://s.zol-img.com.cn/d/Pro/Pro_seriesParam_v4.js?v=43515"></script>
<script src="http://s.zol-img.com.cn/d/Pro/Pro_seriesParam_v4_Old.js?v=43515"></script>
<div class="wrapper">
    <script>var __publicNavWidth = 1200;</script>
    <script language="JavaScript" type="text/javascript"
            src="http://icon.zol-img.com.cn/public/js/web_footc.js"></script>
    <script language="JavaScript" type="text/javascript"
            src="http://icon.zol-img.com.cn/public/js/web_foot_d.js"></script>
    <script>
        var _dxt = _dxt || [];
        var ipCkStr = document.cookie.match(/ip_ck=([^;$]+)/)[1];
        var ipCk = (ipCkStr ? decodeURIComponent(ipCkStr) : "######IP_CK#####");
        _dxt.push(["_setUserId", ipCk]);
        (function () {
            var hm = document.createElement("script");
            hm.src = "http://datax.baidu.com/x.js?si=&dm=www.zol.com.cn";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</div>

</body>
</html>