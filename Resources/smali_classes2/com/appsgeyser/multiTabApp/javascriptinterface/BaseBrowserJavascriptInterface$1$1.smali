.class Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;
.super Ljava/lang/Object;
.source "BaseBrowserJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1$1;->val$callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
