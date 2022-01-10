<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!--  java는 단독적인 아이들이다. 
	html의 태그는 template에서 내려받으므로 바로 사용할 수 있다. 
	리스트 안에 map이 들어있는것
	[{}, {}, {},... ] 행들이 여러개가 있는 리스트 

-->
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
%>


<section class="contents ">
	<table class="table">
		<thead class="text-center">
			<tr>
				<th>채널</th>
				<th>채널명</th>
				<th>카테고리</th>
			</tr>
		</thead>
		<tbody class="text-center">
			<%
				String category = request.getParameter("category"); // parameter의 값이 없을경우 null 이다!!
				// 전체: category == null
				// 카테고리 선택: category == 카테고리명
				
				// 
				
				for (Map<String, String> item : list) { // for으로 list를 꺼내는 반복문을 돌리는것!! list는 List의 이름이 list!!
					if(category == null || category.equals(item.get("category"))) {
					  // 카테고리가 null 이거나 category의 값이 같은 카테고리명이 같을 경우 출력한다.
				%>
				<tr>
					<td><%=item.get("ch")%></td> <!-- map을 꺼내는것! -->
					<td><%=item.get("name")%></td>
					<td><%=item.get("category")%></td>
				</tr>
	
	
				<%
					}
				}
			%>
		</tbody>
	</table>
</section>