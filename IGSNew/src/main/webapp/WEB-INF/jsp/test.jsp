<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">

$('.selectall').click(function() {
    if ($(this).is(':checked')) {
        $('div input').attr('checked', true);
    } else {
        $('div input').attr('checked', false);
    }
});

</script>

<body>


<label><input type="checkbox" name="sample" class="selectall"/> Select all</label>

<div id="checkboxlist">

    <label><input type="checkbox" name="sample[]"/>checkbox1</label><br />
    <label><input type="checkbox" name="sample[]"/>checkbox2</label><br />
    <label><input type="checkbox" name="sample[]"/>checkbox3</label><br />
    <label><input type="checkbox" name="sample[]"/>checkbox4</label><br />

</div>


</body>
</html>