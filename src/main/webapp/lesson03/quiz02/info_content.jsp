<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>



<%
 Map<String, Object> artistInfo = new HashMap<>();
 artistInfo.put("name", "아이유");
 artistInfo.put("debute", 2008);
 artistInfo.put("agency", "EDAM엔터테인먼트");
 artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
%>

<%
	
	
	
	//상세 곡 정보를 보여줄 target Map 세팅
	Map<String, Object> target = null; // new가 되면 절대 null이 될수없음!!
	
	// 1. 목록에서 클릭해서 들어온경우(a 태그) - id값
	if (request.getParameter("id") != null) { // null 검사
		int id = Integer.valueOf(request.getParameter("id"));
		// out.print("################## id:" + id);
		
		for (Map<String, Object> music : musicList) {
			if ((int)music.get("id") == id) {
				target = music;
				break;
				}
			}
		}
	
	// 2. search 검색어로 유입되는 경우
	if (request.getParameter("search") != null) {
		String search = request.getParameter("search");
		
		for(Map<String, Object> music: musicList) {
			String title = (String) music.get("title");
			if (title.equals(search)) {
				target = music;
				break;
			}
		}
	}
%>

<section>
	<% if (target != null) { %>

	<section class="content1">
		<h5 class="font-weight-bold">곡 정보</h5>
		<div class="songInfo border border-success d-flex p-3">
		
			<div class="album-cover mr-3">
				<img src="<%= target.get("thumbnail") %>"
				  	alt="앨범" width=180px height=180px> 
			</div>
			<div class="album-info">
				<span class="display-4 mb-3 "><%= target.get("title") %></span>
				<h6 class="text-success font-weight-bold mb-3"><%= target.get("singer") %></h6>
				<div class="music-info-text d-flex ">
					<div class="mr-3">
						앨범<br>재생시간<br>작곡가<br>작사가
					</div>
					<div>
						
						<%= target.get("album") %><br>
						<%= (int)target.get("time") / 60 %> : <%=(int)target.get("time") % 60 %><br>
						<%= target.get("composer") %><br>
						<%= target.get("lyricist") %>
					</div>
				</div>
			</div>
		</div>
			
	</section>
	<section class="content2 mt-5">
		<h5 class="font-weight-bold">가사</h5>
		<hr class="text-secondary">
		<div class="font-weight-bold"> 가사 정보 없음</div>
		<br><br><br>
	</section>
	<%
		} // --if문의 끝
	else {	// target이 null일 때
	%>
	<h1>찾는 정보 없음</h1>
	<%
	}
	%>
</section>