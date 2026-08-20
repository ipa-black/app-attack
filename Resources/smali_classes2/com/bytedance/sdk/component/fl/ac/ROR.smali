.class public Lcom/bytedance/sdk/component/fl/ac/ROR;
.super Ljava/lang/Object;
.source "LoadFactory.java"


# instance fields
.field private CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/fl/MQ;",
            ">;"
        }
    .end annotation
.end field

.field private Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/fl/ac/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private ROR:Lcom/bytedance/sdk/component/fl/ABk;

.field private Sf:Ljava/util/concurrent/ExecutorService;

.field private Tgh:Lcom/bytedance/sdk/component/fl/fl;

.field private ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/fl/tP;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/sdk/component/fl/iMK;

.field private fl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/fl/ac;",
            ">;"
        }
    .end annotation
.end field

.field private hm:Lcom/bytedance/sdk/component/fl/kYc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/fl/iMK;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl:Ljava/util/Map;

    .line 60
    invoke-static {p2}, Lcom/bytedance/sdk/component/fl/ac/hm;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/fl/iMK;

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    .line 62
    invoke-interface {p2}, Lcom/bytedance/sdk/component/fl/iMK;->hm()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/fl/cJ;)V

    return-void
.end method

.method private CJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/tP;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->fl()Lcom/bytedance/sdk/component/fl/tP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/tP;)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->cJ()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/Qhi;->Qhi(I)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object p1

    return-object p1
.end method

.method private Gm()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->cJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 207
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/fl/Qhi/ac;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private Tgh(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->ROR()Lcom/bytedance/sdk/component/fl/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->fl()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->Qhi()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/cJ;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private WAv()Lcom/bytedance/sdk/component/fl/ABk;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->Qhi()Lcom/bytedance/sdk/component/fl/ABk;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/fl/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/fl/ABk;

    move-result-object v0

    return-object v0
.end method

.method private fl(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->Tgh()Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 123
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->cJ()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/Tgh;->Qhi(I)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object p1

    return-object p1
.end method

.method private hm()Lcom/bytedance/sdk/component/fl/fl;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->CJ()Lcom/bytedance/sdk/component/fl/fl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/component/fl/cJ/cJ;->Qhi()Lcom/bytedance/sdk/component/fl/fl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private zc()Lcom/bytedance/sdk/component/fl/kYc;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->Sf()Lcom/bytedance/sdk/component/fl/kYc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/ac/Sf;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/component/fl/fl;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh:Lcom/bytedance/sdk/component/fl/fl;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->hm()Lcom/bytedance/sdk/component/fl/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh:Lcom/bytedance/sdk/component/fl/fl;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh:Lcom/bytedance/sdk/component/fl/fl;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;
    .locals 8

    .line 216
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->CJ()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;->Qhi:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Gm()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    sget-object v0, Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;->cJ:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    .line 226
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ROR()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Sf()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/ac;
    .locals 1

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->Qhi(Ljava/io/File;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/tP;
    .locals 2

    if-nez p1, :cond_0

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->ROR()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    .line 82
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->fl()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/fl/tP;

    if-nez v1, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object v1

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public Qhi()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/fl/tP;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public ROR()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/fl/ac/ac;",
            ">;>;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi:Ljava/util/Map;

    return-object v0
.end method

.method public Sf()Lcom/bytedance/sdk/component/fl/kYc;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->hm:Lcom/bytedance/sdk/component/fl/kYc;

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->zc()Lcom/bytedance/sdk/component/fl/kYc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->hm:Lcom/bytedance/sdk/component/fl/kYc;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->hm:Lcom/bytedance/sdk/component/fl/kYc;

    return-object v0
.end method

.method public Tgh()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->cJ:Lcom/bytedance/sdk/component/fl/iMK;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/iMK;->ac()Lcom/bytedance/sdk/component/fl/EBS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/EBS;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Sf:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Gm()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Sf:Ljava/util/concurrent/ExecutorService;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->Sf:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public ac(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;
    .locals 2

    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->ROR()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    .line 132
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->fl()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/fl/ac;

    if-nez v1, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Tgh(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;

    move-result-object v1

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public ac()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/fl/ac;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cJ(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;
    .locals 2

    if-nez p1, :cond_0

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;->ROR()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object p1

    .line 107
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/cJ;->fl()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/fl/MQ;

    if-nez v1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->fl(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object v1

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public cJ()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/fl/MQ;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->CJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/component/fl/ABk;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ROR:Lcom/bytedance/sdk/component/fl/ABk;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/ROR;->WAv()Lcom/bytedance/sdk/component/fl/ABk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ROR:Lcom/bytedance/sdk/component/fl/ABk;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ROR;->ROR:Lcom/bytedance/sdk/component/fl/ABk;

    return-object v0
.end method
