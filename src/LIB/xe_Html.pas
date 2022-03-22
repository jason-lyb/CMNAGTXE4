unit xe_Html;

interface
uses SHDocVw, Classes, Forms, ActiveX;

Var
  slDaumMapLoad : String;

procedure procLoadDaumMapHtml;
procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;

implementation

procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

procedure procLoadDaumMapHtml;
begin
  slDaumMapLoad :=
      '<!DOCTYPE html>' + #13#10 +
      '<html>' + #13#10 +
      '<head>' + #13#10 +
      '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' + #13#10 +
      '<style type="text/css">' + #13#10 +
      'html { height: 100% }' + #13#10 +
      'body { height: 100%; margin: 0; padding: 0 }' + #13#10 +
      '#map { width: 100%; height: 100% }' + #13#10 +
      '</style>' + #13#10 +
      '<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=DAUM_MAPS_DEMO_APIKEY" charset="utf-8"></script>' + #13#10 +
      '<script type="text/javascript">' + #13#10 +
      '   var map;' + #13#10 +
      '	  var position;' + #13#10 +
      '	  var marker;' + #13#10 +
      '	  function init() {' + #13#10 +
      '	  	position = new daum.maps.LatLng(ParamLatX, ParamLatY);' + #13#10 +
      '	  	map = new daum.maps.Map(document.getElementById("map"), {' + #13#10 +
      '	  		center: position,' + #13#10 +
      '	  		level: 4,' + #13#10 +
      '	  		mapTypeId: daum.maps.MapTypeId.ROADMAP' + #13#10 +
      '	  	});' + #13#10 +

      '	  	var zoomControl = new daum.maps.ZoomControl();' + #13#10 +
      '	  	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);' + #13#10 +
      '	  	var mapTypeControl = new daum.maps.MapTypeControl();' + #13#10 +
      '	  	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);' + #13#10 +

      '    	var icon = new daum.maps.MarkerImage(' + #13#10 +
      '    		"./Image/SPoint.png"' + #13#10 +
      '    		new daum.maps.Size(44, 38),' + #13#10 +
      '    		new daum.maps.Point(22,19),' + #13#10 +
      '    		"poly",' + #13#10 +
      '    		"1,20,1,9,5,2,10,0,21,0,27,3,30,9,30,20,17,33,14,33"' + #13#10 +
      '    	);' + #13#10 +

      '    	marker = new daum.maps.Marker({' + #13#10 +
      '    			position: new daum.maps.LatLng(ParamLatX, ParamLatY),' + #13#10 +
      '    			image: icon' + #13#10 +
      '    		});' + #13#10 +
      '    	marker.setMap(map);' + #13#10 +
      '	  }' +

      '	  function setStartpanTo() {' + #13#10 +
      '         marker.setMap(null);' + #13#10 +

      '	  	map.setCenter(new daum.maps.LatLng(37.53723910162246, 127.003362714821));' + #13#10 +

      '	  	var icon = new daum.maps.MarkerImage(' + #13#10 +
      '	  		"./Image/SPoint.png",' + #13#10 +
      '	  		new daum.maps.Size(44, 38),' + #13#10 +
      '	  		new daum.maps.Point(22,19),' + #13#10 +
      '	  		"poly",' + #13#10 +
      '	  		"1,20,1,9,5,2,10,0,21,0,27,3,30,9,30,20,17,33,14,33"' + #13#10 +
      '	  	);' + #13#10 +

      '	  	marker = new daum.maps.Marker({' + #13#10 +
      '	  			position: new daum.maps.LatLng(37.53723910162246, 127.003362714821),' + #13#10 +
      '	  			image: icon' + #13#10 +
      '   		});' + #13#10 +
      '	  	marker.setMap(map);' + #13#10 +
      '	  } ' + #13#10 +

      '	  function setEndpanTo() { ' + #13#10 +
      '         marker.setMap(null); ' + #13#10 +

      '	  	map.panTo(new daum.maps.LatLng(37.53730198471141, 127.00744728571883)); ' + #13#10 +

      '	  	var icon = new daum.maps.MarkerImage( ' + #13#10 +
      '	  		"./Image/EPoint.png", ' + #13#10 +
      '	  		new daum.maps.Size(44, 38), ' + #13#10 +
      '	  		new daum.maps.Point(22,19), ' + #13#10 +
      '	  		"poly", ' + #13#10 +
      '	  		"1,20,1,9,5,2,10,0,21,0,27,3,30,9,30,20,17,33,14,33" ' + #13#10 +
      '	  	); ' + #13#10 +

      '	  	marker = new daum.maps.Marker({ ' + #13#10 +
      '	  			position: new daum.maps.LatLng(37.53730198471141, 127.00744728571883), ' + #13#10 +
      '	  			image: icon ' + #13#10 +
      '   		}); ' + #13#10 +
      '	  	marker.setMap(map); ' + #13#10 +
      '	  } ' + #13#10 +
      '</script> ' + #13#10 +
      '</head> ' + #13#10 +
      '<body onload="init()"> ' + #13#10 +
      '	<div id="map"></div> ' + #13#10 +

      '</body> ' + #13#10 +
      '</html> ';
end;

end.
