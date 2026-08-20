.class public Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;
.super Ljava/lang/Object;
.source "WebViewJsAudioPlayer.java"


# static fields
.field public static JS_INTERFACE_NAME:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private _onLoadListener:Ljava/lang/String;

.field private _onTrackFinishedListener:Ljava/lang/String;

.field private _parentWebView:Landroid/webkit/WebView;

.field private _player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    .line 27
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    return-void
.end method

.method private _callFunction(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 136
    array-length p1, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v3, p2, v1

    if-lez v2, :cond_0

    .line 138
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3, v4, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$4;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$4;-><init>(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private _playInternet(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 49
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private _playLocal(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 65
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 66
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 70
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 72
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private _setPlayerEvenets()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$1;-><init>(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$2;-><init>(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer$3;-><init>(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_callFunction(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_parentWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->stop()V

    .line 35
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_setPlayerEvenets()V

    .line 36
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_playLocal(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_playInternet(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public setOnLoadListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_onLoadListener:Ljava/lang/String;

    return-void
.end method

.method public setOnTrackFinishedListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_onTrackFinishedListener:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    return-void
.end method
