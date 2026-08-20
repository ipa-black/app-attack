.class Lcom/yandex/metrica/impl/ob/Sk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/kk;

.field private final b:Lcom/yandex/metrica/impl/ob/b9;

.field private volatile c:Lcom/yandex/metrica/impl/ob/fl;

.field private final d:Lcom/yandex/metrica/impl/ob/Bl;

.field private final e:Lcom/yandex/metrica/impl/ob/gk$b;

.field private final f:Lcom/yandex/metrica/impl/ob/hk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/gk$b;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/gk$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Sk;-><init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;Lcom/yandex/metrica/impl/ob/gk$b;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;Lcom/yandex/metrica/impl/ob/gk$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sk;->c:Lcom/yandex/metrica/impl/ob/fl;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Sk;->a:Lcom/yandex/metrica/impl/ob/kk;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Sk;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Sk;->d:Lcom/yandex/metrica/impl/ob/Bl;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Sk;->f:Lcom/yandex/metrica/impl/ob/hk;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Sk;->e:Lcom/yandex/metrica/impl/ob/gk$b;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/ll;Z)V
    .locals 12

    .line 2
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Sk;->c:Lcom/yandex/metrica/impl/ob/fl;

    if-nez p3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sk;->a:Lcom/yandex/metrica/impl/ob/kk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kk;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    if-eqz p1, :cond_9

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sk;->f:Lcom/yandex/metrica/impl/ob/hk;

    .line 7
    invoke-virtual {v0, p1, v4}, Lcom/yandex/metrica/impl/ob/hk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/Wk;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    const-string v2, "feature %s disabled"

    const-string v3, "no %s_config"

    if-eq v0, v1, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_5

    const/4 p3, 0x2

    const-string v0, "ui_parsing"

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    const-string p1, "parsing ui context is forbidden for some reason"

    goto :goto_0

    :cond_1
    const-string p1, "parsing ui context is forbidden by app for activity"

    goto :goto_0

    :cond_2
    const-string p1, "parsing ui context is forbidden by app for application"

    goto :goto_0

    .line 13
    :cond_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_4
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_5
    const-string p1, "ui_access"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/ll;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-boolean v0, v4, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    const-string v1, "ui_collecting_for_bridge"

    if-nez v0, :cond_7

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/ll;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_7
    iget-object v0, v4, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    if-nez v0, :cond_8

    .line 21
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/ll;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sk;->d:Lcom/yandex/metrica/impl/ob/Bl;

    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sk;->e:Lcom/yandex/metrica/impl/ob/gk$b;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Sk;->a:Lcom/yandex/metrica/impl/ob/kk;

    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/Sk;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v1, Lcom/yandex/metrica/impl/ob/gk;

    .line 79
    new-instance v11, Lcom/yandex/metrica/impl/ob/gk$a;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/gk$a;-><init>()V

    move-object v6, v1

    move v9, p3

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/yandex/metrica/impl/ob/gk;-><init>(Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;ZLcom/yandex/metrica/impl/ob/ll;Lcom/yandex/metrica/impl/ob/gk$a;)V

    .line 80
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-wide/16 v2, 0x0

    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Bl;->a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Ljava/util/List;)V

    goto :goto_1

    .line 95
    :cond_9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Sk;->a:Lcom/yandex/metrica/impl/ob/kk;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/kk;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/ll;->onResult(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/fl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sk;->c:Lcom/yandex/metrica/impl/ob/fl;

    return-void
.end method
