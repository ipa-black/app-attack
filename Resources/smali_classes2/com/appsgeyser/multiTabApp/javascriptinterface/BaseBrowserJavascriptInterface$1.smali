.class Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;
.super Ljava/lang/Object;
.source "BaseBrowserJavascriptInterface.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;

.field final synthetic val$resultCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->val$resultCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 51
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    const-string p1, ""

    .line 70
    :goto_1
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javascript:window."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->val$resultCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "(\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\');"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
