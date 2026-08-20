.class public Lcom/explorestack/iab/mraid/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/j$c;,
        Lcom/explorestack/iab/mraid/j$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "j"

.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/explorestack/iab/mraid/j$b;

.field public final b:Lcom/explorestack/iab/mraid/i;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lcom/explorestack/iab/mraid/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/j$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->e:Z

    iput-object p2, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->d:Z

    new-instance p2, Lcom/explorestack/iab/mraid/i;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/mraid/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    new-instance p1, Lcom/explorestack/iab/mraid/j$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/explorestack/iab/mraid/j$c;-><init>(Lcom/explorestack/iab/mraid/j;Lcom/explorestack/iab/mraid/j$a;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/explorestack/iab/mraid/j$a;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/j$a;-><init>(Lcom/explorestack/iab/mraid/j;)V

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/i;->setListener(Lcom/explorestack/iab/mraid/i$e;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/j;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/j;->c:Z

    return p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/j;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j$b;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/j;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/j;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/i;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(function click(x, y) {var ev = new MouseEvent(\'click\', {    \'view\': window,    \'bubbles\': true,    \'cancelable\': true,    \'screenX\': x,    \'screenY\': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/b;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/b;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.setPlacementType(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/f;->e()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/f;->d()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraid.setScreenSize("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");mraid.setMaxSize("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/f;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/f;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraid.fireSizeChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/f;->a()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/h;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.fireStateChangeEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/utils/Logger$LogLevel;)V
    .locals 1

    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne p1, v0, :cond_0

    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->info:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne p1, v0, :cond_1

    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->warning:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne p1, v0, :cond_2

    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne p1, v0, :cond_3

    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-ne p1, v0, :cond_4

    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleJsCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/g;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "command"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "handleJsCommand: not found"

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/explorestack/iab/mraid/j;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/j;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->c:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "useCustomClose"

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setOrientationProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "noFill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "expand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "playVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    :goto_0
    const-string p1, "url"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/explorestack/iab/mraid/j;->d:Z

    if-eq p2, p1, :cond_c

    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/j;->d:Z

    iget-object p2, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p2, p1}, Lcom/explorestack/iab/mraid/j$b;->b(Z)V

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/c;->a(Ljava/lang/String;)I

    move-result p2

    new-instance v0, Lcom/explorestack/iab/mraid/c;

    invoke-direct {v0, p1, p2}, Lcom/explorestack/iab/mraid/c;-><init>(ZI)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/j;->f:Lcom/explorestack/iab/mraid/c;

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p1, v0}, Lcom/explorestack/iab/mraid/j$b;->a(Lcom/explorestack/iab/mraid/c;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p1}, Lcom/explorestack/iab/mraid/j$b;->b()V

    goto/16 :goto_2

    :pswitch_3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p1, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    const-string p2, "url is null or empty"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    sget-boolean p2, Lcom/explorestack/iab/mraid/j;->h:Z

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p1, Lcom/explorestack/iab/mraid/e;

    invoke-direct {p1}, Lcom/explorestack/iab/mraid/e;-><init>()V

    const-string v0, "width"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/explorestack/iab/mraid/e;->a:I

    const-string v0, "height"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/explorestack/iab/mraid/e;->b:I

    const-string v0, "offsetX"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/explorestack/iab/mraid/e;->c:I

    const-string v0, "offsetY"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/explorestack/iab/mraid/e;->d:I

    const-string v0, "allowOffscreen"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/explorestack/iab/mraid/e;->f:Z

    const-string v0, "customClosePosition"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/l;->a(Ljava/lang/String;)Lcom/explorestack/iab/mraid/l;

    move-result-object p2

    iput-object p2, p1, Lcom/explorestack/iab/mraid/e;->e:Lcom/explorestack/iab/mraid/l;

    iget-object p2, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p2, p1}, Lcom/explorestack/iab/mraid/j$b;->a(Lcom/explorestack/iab/mraid/e;)V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p1, v2}, Lcom/explorestack/iab/mraid/j$b;->a(I)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p1}, Lcom/explorestack/iab/mraid/j$b;->a()V

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/j$b;->b(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/j$b;->c(Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_8
        -0x4cd72166 -> :sswitch_7
        -0x416acffb -> :sswitch_6
        -0x3e0d511c -> :sswitch_5
        -0x37b2634c -> :sswitch_4
        0x34264a -> :sswitch_3
        0x5a5ddf8 -> :sswitch_2
        0x7f3dfe1 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/explorestack/iab/mraid/c;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->f:Lcom/explorestack/iab/mraid/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/explorestack/iab/mraid/i;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->c:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->e:Z

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->a:Lcom/explorestack/iab/mraid/j$b;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/j$b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/i;->h()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    const-string v0, "Can\'t open url because webView wasn\'t clicked"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/j;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/j;->b:Lcom/explorestack/iab/mraid/i;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/i;->e()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    const-string v0, "mraid.nativeCallComplete();"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "mraid.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    return-void
.end method
