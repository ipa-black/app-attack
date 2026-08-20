.class public Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;
.super Ljava/lang/Object;
.source "BaseBrowserJavascriptInterface.java"


# static fields
.field public static final JS_PREFERENCE_NAME:Ljava/lang/String; = "JS-PREFERENCE"

.field public static final JS_PREFERENCE_PREFIX:Ljava/lang/String; = "JS-Preference-"


# instance fields
.field private _context:Landroid/content/Context;

.field private _view:Landroid/webkit/WebView;

.field private _webViewThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_view:Landroid/webkit/WebView;

    .line 36
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_webViewThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;)Landroid/webkit/WebView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_view:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_webViewThreadHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_view:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    const-string v0, ""

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public getBase64FromImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 142
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;-><init>(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    const/4 v1, 0x0

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$2;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$2;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V

    return-void
.end method

.method public getFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    const-string v1, "JS-PREFERENCE"

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JS-Preference-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveImageFromBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p2, :cond_0

    .line 101
    const-string p2, "IMG"

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/ImageReader;->createBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->saveBitmapToGallery(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    const-string p2, "Image saved to gallery..."

    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->showInfo(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 43
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;-><init>(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    const/4 v1, 0x0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface$1;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    const-string v1, "JS-PREFERENCE"

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JS-Preference-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/BaseBrowserJavascriptInterface;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
