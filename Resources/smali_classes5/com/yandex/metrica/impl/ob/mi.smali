.class public Lcom/yandex/metrica/impl/ob/mi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z

.field private g:Lcom/yandex/metrica/impl/ob/fl;

.field private h:Lcom/yandex/metrica/impl/ob/ra;

.field private i:J

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/gl;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yandex/metrica/impl/ob/b9;

.field private final l:Lcom/yandex/metrica/impl/ob/Rh;

.field private final m:Lcom/yandex/metrica/impl/ob/Th;

.field private final n:Lcom/yandex/metrica/impl/ob/Wh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 8

    .line 1
    new-instance v2, Lcom/yandex/metrica/impl/ob/Nh;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Nh;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Rh;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Rh;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hj;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/hj;-><init>(Lcom/yandex/metrica/impl/ob/b9;)V

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bj;)Lcom/yandex/metrica/impl/ob/dj;

    move-result-object v4

    new-instance v5, Lcom/yandex/metrica/impl/ob/Th;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Th;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Wh;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/Wh;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/Vh;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/Vh;-><init>()V

    move-object v0, p0

    move-object v1, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/mi;-><init>(Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Nh;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/Th;Lcom/yandex/metrica/impl/ob/Wh;Lcom/yandex/metrica/impl/ob/Vh;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Nh;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/Th;Lcom/yandex/metrica/impl/ob/Wh;Lcom/yandex/metrica/impl/ob/Vh;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->a:Ljava/util/Set;

    .line 9
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 20
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    .line 57
    const-string p7, "yandex_mobile_metrica_google_adv_id"

    invoke-virtual {p2, p7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "yandex_mobile_metrica_huawei_oaid"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "yandex_mobile_metrica_yandex_adv_id"

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    .line 62
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/mi;->l:Lcom/yandex/metrica/impl/ob/Rh;

    .line 63
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    .line 64
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    .line 67
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/dj;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_uuid"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 69
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->l()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_device_id"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->k()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "appmetrica_device_id_hash"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 71
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->f()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_get_ad_url"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->g()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_report_ad_url"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 73
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->r()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_clids"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 74
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->o()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, p7, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->p()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 76
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->v()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 77
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->j()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/yandex/metrica/impl/ob/Th;->a(Lcom/yandex/metrica/impl/ob/W0;)V

    .line 78
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->n()Lcom/yandex/metrica/impl/ob/Xh;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/yandex/metrica/impl/ob/Wh;->a(Lcom/yandex/metrica/impl/ob/Xh;)V

    .line 79
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->i()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/b9;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/b9;->b(Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    const-wide/16 p2, 0x0

    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/b9;->d(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->t()Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 86
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->m()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 87
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->q()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 89
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V
    .locals 1

    .line 13
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/W0;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b(Lcom/yandex/metrica/impl/ob/W0;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->i(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_device_id"

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->e(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "appmetrica_device_id_hash"

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->d(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_get_ad_url"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_report_ad_url"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->b(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->h(J)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_clids"

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->h(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    .line 8
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 9
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 10
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/ra;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_google_adv_id"

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->f(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_huawei_oaid"

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->g(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_yandex_adv_id"

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->j(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 14
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->d(Z)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    .line 15
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Th;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->c(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->g(J)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Wh;->a()Lcom/yandex/metrica/impl/ob/Xh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/Xh;)Lcom/yandex/metrica/impl/ob/b9;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 4

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/L;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/L;-><init>(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->o()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->c()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_device_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->d()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "appmetrica_device_id_hash"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->g()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_google_adv_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->i()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_huawei_oaid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->p()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_yandex_adv_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->b()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/Th;->a(Lcom/yandex/metrica/impl/ob/W0;)V

    .line 61
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->f()Lcom/yandex/metrica/impl/ob/Xh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/Wh;->a(Lcom/yandex/metrica/impl/ob/Xh;)V

    .line 62
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->h()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_get_ad_url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->k()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_report_ad_url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->m()J

    move-result-wide v1

    .line 69
    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 70
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->l:Lcom/yandex/metrica/impl/ob/Rh;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    .line 72
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 76
    :cond_6
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 77
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 134
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result p1

    goto :goto_1

    .line 136
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    .line 137
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->l()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_clids"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 139
    :cond_8
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->n()Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 140
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fl;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 141
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 142
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/gl;

    .line 143
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/gl;->a(Lcom/yandex/metrica/impl/ob/fl;)V

    goto :goto_2

    .line 146
    :cond_9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->e()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 147
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 149
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/gl;)V
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b9;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/b9;

    return-void
.end method

.method declared-synchronized a(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/W0;

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Th;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Wh;->a(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 6
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v1, "yandex_mobile_metrica_clids"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    .line 8
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method declared-synchronized a(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    if-nez v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Th;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    :cond_1
    if-nez v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Wh;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    :cond_2
    const-string v2, "yandex_mobile_metrica_clids"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 36
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    :try_start_1
    const-string v2, "yandex_mobile_metrica_lib_ssl_enabled"

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    monitor-exit p0

    return v3

    .line 44
    :cond_5
    :try_start_2
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v3

    :cond_6
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized b(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mi;->a:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 8
    :goto_0
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ob/ni;->a(J)Z

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/fl;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    xor-int/2addr v4, v1

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    .line 10
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v1, "yandex_mobile_metrica_device_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/ra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    return-object v0
.end method

.method e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    return-wide v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v1, "yandex_mobile_metrica_uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
