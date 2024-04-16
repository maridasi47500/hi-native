$(function(){
$(".audioContainer").each(function(){
	var me=$(this);
// Display the user defined audio controls
$(this).children(".audio")[0].onloadedmetadata= () => {
console.log($(this)[0].duration);	
me.children().children(".progress")[0].max=$(this)[0].duration;	
};
$(this).children(".audio")[0].addEventListener("timeupdate",() => {
me.children().children(".progress")[0].value=$(this)[0].currentTime;
});
$(this).children().children(".audioControls").each(function(){
	$(this)[0].setAttribute("data-state", "visible");
});
//
const supportsProgress = document.createElement("progress").max !== undefined;
if (!supportsProgress) $(this).children().children(".progress")[0].setAttribute("data-state", "fake");

function changeButtonState(type) {
	  if (type === "playpause") {
		    // Play/Pause button
		       if (me.children(".audio")[0].paused || me.children(".audio")[0].ended) {
				     me.children().children('.playpause')[0].setAttribute("data-state", "play");
					 } else {
					       me.children().children('.playpause')[0].setAttribute("data-state", "pause");
						   }
						     } else if (type === "mute") {
							 // Mute button
							     $(this).children().children('.mute')[0].setAttribute("data-state", audio.muted ? "unmute" : "mute");
							       }
							       }
			  
	$(this).children(".audio")[0].addEventListener(
		  "play",
		  () => {
			      changeButtonState("playpause");
			    },
		  false,
	);

	$(this).children(".audio")[0].addEventListener(
		  "pause",
		  () => {
			      changeButtonState("playpause");
			    },
		  false,
	);

	$(this).children().children(".stop")[0].addEventListener("click", (e) => {
	  me.children(".audio")[0].pause();
	  me.children(".audio")[0].currentTime = 0;
	  me.children(".progress")[0].value = 0;

	// Update the play/pause button's 'data-state' which allows the correct button image to be set via CSS
	   changeButtonState("playpause");
	   });
	
	   me.children().children(".mute")[0].addEventListener("click", (e) => {
	     me.children(".audio")[0].muted = !$(this).children().children(".audio")[0].muted;
	       changeButtonState("mute");
	       });
me.children().children(".playpause")[0].addEventListener("click", (e) => {
	  if (me.children(".audio")[0].paused || me.children(".audio")[0].ended) {
		      me.children(".audio")[0].play();
		    } else {
			        me.children(".audio")[0].pause();
			      }
});

function checkVolume(dir) {
	  if (dir) {
		      const currentVolume = Math.floor(audio.volume * 10) / 10;
		      if (dir === "+" && currentVolume < 1) {
			            me.children(".audio")[0].volume += 0.1;
			          } else if (dir === "-" && currentVolume > 0) {
					        me.children(".audio")[0].volume -= 0.1;
					      }

		    // If the volume has been turned off, also set it as muted
		       // Note: can only do this with the custom control set as when the 'volumechange' event is raised,
		           // there is no way to know if it was via a volume or a mute change
		               me.children(".audio")[0].muted = currentVolume <= 0;
		                 }
		                   changeButtonState("mute");
		                   }
		  
		                   const alterVolume = (dir) => {
		                     checkVolume(dir);
		                     };
me.children(".audio")[0].addEventListener(

	  "volumechange",
	  () => {
		      checkVolume();
		    },
	  false,
);
console.log(me.children().children(".voldec"))
console.log(me.children().children(".volinc"))
me.children().children(".voldec")[0].addEventListener("click", () => {
	  me.children(".audio")[0].volume -=0.1;
});
me.children().children(".volinc")[0].addEventListener("click", () => {
	  me.children(".audio")[0].volume +=0.1;
});


me.children().children(".progress")[0].addEventListener("click", (e) => {
	  const pos =
		    (e.pageX - me.children().children(".progress")[0].offsetLeft - me.children().children(".progress")[0].offsetParent.offsetLeft) /
		    me.children().children(".progress")[0].offsetWidth;
	  me.children(".audio")[0].currentTime = pos * me.children(".audio")[0].duration;
});


		  
	
});
});
