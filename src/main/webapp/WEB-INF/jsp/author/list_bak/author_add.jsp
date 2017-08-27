<%--
  Created by IntelliJ IDEA.
  User: nekuata
  Date: 2017/7/21
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加产品</title>
</head>
<script>
    $(document).ready(function () {
        $("#btn_add_author").click(function () {
            $.ajax({
                url: "/authorservlet.do?operate=addauthor&flag=ajax",
                cache: false, //禁用缓存
                processData: false, //不对数据进行处理
                contentType: false,
                type: "post",
                data: new FormData($("#uploadForm")[0]),
                success: function (data) {
                    if (data == "true") {
                        $("#tb_author").bootstrapTable('refresh');
                        $(".bootbox-close-button").click();
                    } else {
                        alert("添加失败");
                        $(".bootbox-close-button").click();
                    }
                },
                error: function () {
                    alert("通信失败");
                    $(".bootbox-close-button").click();
                }
            });
        });

        $(".form_datetime").datetimepicker({
            format: "yyyy-mm-dd hh:ii:ss",
            autoclose: true,
            todayBtn: true
        });

        $(document).click(function(e){
            var _con = $(".modal-content");   // 设置目标区域
            if(!_con.is(e.target) && _con.has(e.target).length === 0){ // Mark 1
                $(".bootbox-close-button").click();
            }
        });
//        $(".form_datetime").datetimepicker({format: 'yyyy-mm-dd hh:ii:ss'});
    });
    /*function LoadType() {
        $.ajax({
            url: "/authorservlet.do?operate=queryProductType",
            type: "post",
            dataType: "json",
            success: function (arrayType) {
                var optionStr = "<option value='0'>请选择类别</option>";
                for (var i = 0; i < arrayType.length; i++) {
                    var jsonData = arrayType[i];
                    optionStr += "<option value='" + jsonData.typeId + "'>" + jsonData.typeName + "</option>"
                }
                $("#typeId").html(optionStr);
            },
            error: function () {
                alert("通信失败");
            }
        });
    }*/
</script>
<body>
<form id="uploadForm" enctype="multipart/form-data">
    <div class="form-group">
        <label for="authorName">名称</label>
        <input type="text" class="form-control" id="authorName" name="authorName" placeholder="君の名は。">
    </div>
    <div class="form-group">
        <label for="authorPrice">价格</label>
        <input type="text" class="form-control" id="authorPrice" name="authorPrice" placeholder="价格">
    </div>
    <div class="form-group">
        <label for="number">库存</label>
        <input type="text" class="form-control" id="number" name="number" placeholder="库存">
    </div>
    <div class="form-group">
        <label for="authorTime">日期</label>
        <input id="authorTime" name="authorTime" type="text" value="" placeholder="日期" readonly class="form_datetime form-control">
    </div>
    <div class="form-group">
        <label for="typeId">类别：</label>
        <select class="form-control" id="typeId" name="authorTypeId">
            <option value="0">请选择类别</option>
            <c:forEach items="${requestScope.authorTypes}" var="authorTypes">
                <option value="${authorTypes.typeId}" <c:if test="${authorTypes.typeId == requestScope.user.authorType.typeId}">selected</c:if>>${authorTypes.typeName}</option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label for="uploadPic">File input</label>
        <input type="file" id="uploadPic" name="uploadPic">
        <p class="help-block">产品图片上传</p>
    </div>

    <button type="button" id="btn_add_author" class="btn btn-default">提交</button>
</form>
</body>
</html>
