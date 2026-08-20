.class public final Lcom/appnext/core/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hV:Ljava/lang/String; = "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"\uc124\uce58\",\"Download\":\"\ub2e4\uc6b4\ub85c\ub4dc\",\"Shop\":\"\uac00\uac8c\uc5d0\uc11c \ubb3c\uac74\uc744 \uc0ac\ub2e4\",\"Sign up\":\"\ud68c\uc6d0\uac00\uc785\",\"Watch\":\"\ubcf4\ub2e4\",\"Join\":\"\uc785\ud68c\ud558\ub2e4\",\"Start\":\"\uc2dc\uc791\",\"Subscribe\":\"\uad6c\ub3c5\",\"Add\":\"\ucd94\uac00\",\"Search\":\"\uac80\uc0c9\",\"Share\":\"\uacf5\uc720\",\"Get\":\"\uc5bb\ub2e4\",\"Book\":\"\uc608\uc57d\",\"Play\":\"\uc7ac\uc0dd\"},\"existing\":{\"Install\":\"\uc124\uce58\",\"Use\":\"\uc124\uce58\",\"Play\":\"\uc7ac\uc0dd\",\"Reserve\":\"\uc608\uc57d\ud558\uae30\",\"Buy\":\"\uad6c\ub9e4\ud558\uae30\",\"View\":\"\ubc14\ub77c\ubcf4\ub2e4\",\"Log in\":\"\ub85c\uadf8\uc778\",\"Listen\":\"\ub4e3\uae30\",\"Read\":\"\uc77d\uae30\",\"Watch\":\"\ubcf4\uae30\",\"See more\":\"\ub354 \ubcf4\uae30\",\"Find\":\"\ucc3e\uae30\",\"Book\":\"\uc608\uc57d\",\"Chat\":\"\ucc44\ud305\",\"Park\":\"\uc77d\uae30\",\"Open\":\"\uac1c\uc7a5\",\"Exercise\":\"\uc5f0\uc2b5\ud558\ub2e4\",\"Optimize\":\"\ucd5c\uc801\ud654\ud558\uae30\"}}}"

.field public static final hW:Ljava/lang/String; = "settings"

.field public static final hX:Ljava/lang/String; = "new"

.field public static final hY:Ljava/lang/String; = "existing"

.field private static ia:Lcom/appnext/core/a/b;


# instance fields
.field private hZ:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/a/b$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/a/b$1;-><init>(Lcom/appnext/core/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/appnext/core/a/b;->hZ:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "settings"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "active"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static declared-synchronized bp()Lcom/appnext/core/a/b;
    .locals 2

    const-class v0, Lcom/appnext/core/a/b;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/appnext/core/a/b;->ia:Lcom/appnext/core/a/b;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/appnext/core/a/b;

    invoke-direct {v1}, Lcom/appnext/core/a/b;-><init>()V

    sput-object v1, Lcom/appnext/core/a/b;->ia:Lcom/appnext/core/a/b;

    .line 40
    :cond_0
    sget-object v1, Lcom/appnext/core/a/b;->ia:Lcom/appnext/core/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 44
    const-string v0, "EN"

    const-string v1, "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"\uc124\uce58\",\"Download\":\"\ub2e4\uc6b4\ub85c\ub4dc\",\"Shop\":\"\uac00\uac8c\uc5d0\uc11c \ubb3c\uac74\uc744 \uc0ac\ub2e4\",\"Sign up\":\"\ud68c\uc6d0\uac00\uc785\",\"Watch\":\"\ubcf4\ub2e4\",\"Join\":\"\uc785\ud68c\ud558\ub2e4\",\"Start\":\"\uc2dc\uc791\",\"Subscribe\":\"\uad6c\ub3c5\",\"Add\":\"\ucd94\uac00\",\"Search\":\"\uac80\uc0c9\",\"Share\":\"\uacf5\uc720\",\"Get\":\"\uc5bb\ub2e4\",\"Book\":\"\uc608\uc57d\",\"Play\":\"\uc7ac\uc0dd\"},\"existing\":{\"Install\":\"\uc124\uce58\",\"Use\":\"\uc124\uce58\",\"Play\":\"\uc7ac\uc0dd\",\"Reserve\":\"\uc608\uc57d\ud558\uae30\",\"Buy\":\"\uad6c\ub9e4\ud558\uae30\",\"View\":\"\ubc14\ub77c\ubcf4\ub2e4\",\"Log in\":\"\ub85c\uadf8\uc778\",\"Listen\":\"\ub4e3\uae30\",\"Read\":\"\uc77d\uae30\",\"Watch\":\"\ubcf4\uae30\",\"See more\":\"\ub354 \ubcf4\uae30\",\"Find\":\"\ucc3e\uae30\",\"Book\":\"\uc608\uc57d\",\"Chat\":\"\ucc44\ud305\",\"Park\":\"\uc77d\uae30\",\"Open\":\"\uac1c\uc7a5\",\"Exercise\":\"\uc5f0\uc2b5\ud558\ub2e4\",\"Optimize\":\"\ucd5c\uc801\ud654\ud558\uae30\"}}}"

    if-eqz p1, :cond_0

    .line 45
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/appnext/core/a/b;->hZ:Ljava/lang/String;

    invoke-static {v2, p1, p2, p3}, Lcom/appnext/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lcom/appnext/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 54
    :catchall_1
    :try_start_2
    iget-object p1, p0, Lcom/appnext/core/a/b;->hZ:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/appnext/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 57
    :catchall_2
    :try_start_3
    invoke-static {v1, v0, p2, p3}, Lcom/appnext/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_0
    return-object p3
.end method

.method public final bq()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/appnext/core/a/b;->hZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"\uc124\uce58\",\"Download\":\"\ub2e4\uc6b4\ub85c\ub4dc\",\"Shop\":\"\uac00\uac8c\uc5d0\uc11c \ubb3c\uac74\uc744 \uc0ac\ub2e4\",\"Sign up\":\"\ud68c\uc6d0\uac00\uc785\",\"Watch\":\"\ubcf4\ub2e4\",\"Join\":\"\uc785\ud68c\ud558\ub2e4\",\"Start\":\"\uc2dc\uc791\",\"Subscribe\":\"\uad6c\ub3c5\",\"Add\":\"\ucd94\uac00\",\"Search\":\"\uac80\uc0c9\",\"Share\":\"\uacf5\uc720\",\"Get\":\"\uc5bb\ub2e4\",\"Book\":\"\uc608\uc57d\",\"Play\":\"\uc7ac\uc0dd\"},\"existing\":{\"Install\":\"\uc124\uce58\",\"Use\":\"\uc124\uce58\",\"Play\":\"\uc7ac\uc0dd\",\"Reserve\":\"\uc608\uc57d\ud558\uae30\",\"Buy\":\"\uad6c\ub9e4\ud558\uae30\",\"View\":\"\ubc14\ub77c\ubcf4\ub2e4\",\"Log in\":\"\ub85c\uadf8\uc778\",\"Listen\":\"\ub4e3\uae30\",\"Read\":\"\uc77d\uae30\",\"Watch\":\"\ubcf4\uae30\",\"See more\":\"\ub354 \ubcf4\uae30\",\"Find\":\"\ucc3e\uae30\",\"Book\":\"\uc608\uc57d\",\"Chat\":\"\ucc44\ud305\",\"Park\":\"\uc77d\uae30\",\"Open\":\"\uac1c\uc7a5\",\"Exercise\":\"\uc5f0\uc2b5\ud558\ub2e4\",\"Optimize\":\"\ucd5c\uc801\ud654\ud558\uae30\"}}}"

    return-object v0
.end method
