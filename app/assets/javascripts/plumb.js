


jsPlumb.ready(function() {
  jsPlumb.Defaults.Container = $("body");
	var e0 = jsPlumb.addEndpoint("5f69af0f6c23ef3e6d6a36a19a918c89d37916d2", {
              paintStyle: {fillStyle: "#2980B9",outlineWidth:1},
               anchors:[ "Left" ],
               endpoint:[ "Dot", { radius:3 }]
              });
  var e1 = jsPlumb.addEndpoint("_5f69af0f6c23ef3e6d6a36a19a918c89d37916d2",{
              paintStyle: {fillStyle: "#2980B9",outlineWidth:1},
               anchors:[ "Right" ],
               endpoint:[ "Dot", { radius:3 }]
              });

    c = jsPlumb.connect({
        source:e0,
        target:e1,
        connector: "Flowchart",
        paintStyle: {
          strokeStyle: "#2980B9",
          lineWidth:3
          }
      });

    $(window).resize(function() {
			jsPlumb.repaintEverything();
		});

  });


