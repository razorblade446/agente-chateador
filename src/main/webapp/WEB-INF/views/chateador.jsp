<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout>
    <jsp:body>

        <script type="text/javascript">
            $(document).ready(function(){

                $("#enviar_mensaje").click(function(){
                    var messageInput = $("#chat_mensaje");

                    if(messageInput.val() != ""){
                        $("#chat_log").append($("<div class='message messageUser container-fluid'>").text(messageInput.val()));
                        messageInput.val("");
                    }

                    return true;
                });

            });
        </script>

        <style>
            #chat_log {
                min-height: 400px;
                max-height: 400px;
                min-width: 400px;
                width: 100%;
                background-color: #DDDDDD;
                border: 1px solid #999999;
            }

            .message{
                margin-top: 5px;
            }

            .message{
                padding: 5px;
                border: 1px solid #CCCCCC;
            }

            .messageUser{
                text-align: right;
                background-color: #FFFFFF;
            }

            .messageChat{
                text-align: left;
                background-color: #CCFFCC;
            }
        </style>

        <h2><span class="glyphicon glyphicon-comment"></span>&nbsp;Chat</h2>

        <div id="chat_log" class="img-rounded">
            <div class="message messageChat container-fluid img-rounded">
                Mensaje de Chat
            </div>
            <div class="message messageUser container-fluid img-rounded">
                Mensaje de Usuario
            </div>
        </div>
        <h3>Escriba aquí</h3>

        <div class="controls">
            <form role="form" autocomplete="off">
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" id="chat_mensaje"/>
                            <span class="input-group-btn">
                                <a href="#" class="btn btn-success" id="enviar_mensaje">
                                    <span class="glyphicon glyphicon-send"></span>
                                </a>
                            </span>
                </div>
            </form>
        </div>

    </jsp:body>
</t:layout>