<!DOCTYPE html>
<!--
	NOTES:
	1. All tokens are represented by '$' sign in the template.
	2. You can write your code only wherever mentioned.
	3. All occurrences of existing tokens will be replaced by their appropriate values.
	4. Blank lines will be removed automatically.
	5. Remove unnecessary comments before creating your template.
-->
<html>

<head>
    <meta charset="UTF-8">
    <meta name="authoring-tool" content="IE=edge">
    <title>coffeemachine</title>
    <link rel="stylesheet" href="style/modal.css">
    <script src="https://code.createjs.com/1.0.0/createjs.min.js"></script>
    <script src="./script/coffeemachine.js"></script>
</head>

<body onload="init();" style="margin:0px;">

    <!-- MODAL + Include de la selection de la question -->
    <div class="glass">
        <div class="modalFormContainer">
            <div class="modalFormThird">
                <div class="modalFormSecond">
                    <div class="modalForm">
                        <p class="intituleQuestion">Ici c'est au cas oú tu veux boire du pipi, je pense pas que c'est le cas, alors rien se passe. Try again for real coffee!</p>
                    </div>
                </div>
            </div>

            <!-- MACHINE A CAFE -->
            <div id="animation_container">
                <canvas id="canvas"></canvas>
                <div id="dom_overlay_container">
                </div>
            </div>

        </div>
    </div>


</body>

</html>