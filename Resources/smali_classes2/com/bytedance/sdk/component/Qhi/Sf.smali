.class Lcom/bytedance/sdk/component/Qhi/Sf;
.super Ljava/lang/Object;
.source "CallHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Qhi/bxS$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
    }
.end annotation


# instance fields
.field private final CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Qhi/fl$cJ;",
            ">;"
        }
    .end annotation
.end field

.field private final Qhi:Lcom/bytedance/sdk/component/Qhi/hm;

.field private final ROR:Lcom/bytedance/sdk/component/Qhi/iMK;

.field private final Sf:Z

.field private final Tgh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/component/Qhi/fl;",
            ">;"
        }
    .end annotation
.end field

.field private final WAv:Lcom/bytedance/sdk/component/Qhi/Qhi;

.field private final ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Qhi/cJ;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/sdk/component/Qhi/qMt;

.field private final fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Qhi/HzH;",
            ">;"
        }
    .end annotation
.end field

.field private final hm:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Qhi/Gm;Lcom/bytedance/sdk/component/Qhi/Qhi;Lcom/bytedance/sdk/component/Qhi/EBS;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->ac:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->CJ:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->fl:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Tgh:Ljava/util/Set;

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->WAv:Lcom/bytedance/sdk/component/Qhi/Qhi;

    .line 38
    iget-object p2, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->CJ:Lcom/bytedance/sdk/component/Qhi/hm;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/Qhi/hm;

    .line 39
    new-instance p2, Lcom/bytedance/sdk/component/Qhi/qMt;

    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->zc:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->ABk:Ljava/util/Set;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/sdk/component/Qhi/qMt;-><init>(Lcom/bytedance/sdk/component/Qhi/EBS;Ljava/util/Set;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ:Lcom/bytedance/sdk/component/Qhi/qMt;

    .line 40
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/Qhi/qMt;->Qhi(Lcom/bytedance/sdk/component/Qhi/bxS$Qhi;)V

    .line 41
    iget-object p3, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->hpZ:Lcom/bytedance/sdk/component/Qhi/zc$Qhi;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/Qhi/qMt;->Qhi(Lcom/bytedance/sdk/component/Qhi/zc$Qhi;)V

    .line 42
    iget-object p2, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->hm:Lcom/bytedance/sdk/component/Qhi/iMK;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->ROR:Lcom/bytedance/sdk/component/Qhi/iMK;

    .line 43
    iget-boolean p2, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Sf:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Sf:Z

    .line 44
    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->pA:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->hm:Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/Qhi;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->WAv:Lcom/bytedance/sdk/component/Qhi/Qhi;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/Tgh;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object p1, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->fl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Qhi/Tgh;->Qhi(Ljava/lang/Object;Lcom/bytedance/sdk/component/Qhi/ROR;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    new-instance p2, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    iget-object p3, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/Qhi/hm;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/Qhi/hm;->Qhi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/Sf$1;)V

    return-object p2
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/ac;Lcom/bytedance/sdk/component/Qhi/Dww;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance p2, Lcom/bytedance/sdk/component/Qhi/MQ;

    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->CJ:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/component/Qhi/Sf$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/Qhi/Sf$2;-><init>(Lcom/bytedance/sdk/component/Qhi/Sf;Lcom/bytedance/sdk/component/Qhi/HzH;)V

    invoke-direct {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/Qhi/MQ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Dww;Lcom/bytedance/sdk/component/Qhi/MQ$Qhi;)V

    .line 185
    new-instance p1, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    invoke-static {}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/Sf$1;)V

    return-object p1
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/fl;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Tgh:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->fl:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Qhi/Sf$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/Sf$1;-><init>(Lcom/bytedance/sdk/component/Qhi/Sf;Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/fl;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/Qhi/fl;->Qhi(Ljava/lang/Object;Lcom/bytedance/sdk/component/Qhi/ROR;Lcom/bytedance/sdk/component/Qhi/fl$Qhi;)V

    .line 171
    new-instance p1, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    invoke-static {}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/Sf$1;)V

    return-object p1
.end method

.method private Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/Qhi/hm;

    invoke-static {p2}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/hm;->Qhi(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static Qhi(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 1

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 215
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/Qhi/Sf;)Ljava/util/Set;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Tgh:Ljava/util/Set;

    return-object p0
.end method

.method private cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Lcom/bytedance/sdk/component/Qhi/Dww;
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->hm:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object p1, Lcom/bytedance/sdk/component/Qhi/Dww;->ac:Lcom/bytedance/sdk/component/Qhi/Dww;

    return-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ:Lcom/bytedance/sdk/component/Qhi/qMt;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Sf:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/Qhi/qMt;->Qhi(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Lcom/bytedance/sdk/component/Qhi/Dww;

    move-result-object p1

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/hm;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/Qhi/hm;

    return-object p0
.end method


# virtual methods
.method Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->ac:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->CJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Qhi/cJ;

    const/4 v1, -0x1

    .line 52
    const-string v2, "Permission denied, call: "

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 53
    :try_start_0
    iget-object v4, p2, Lcom/bytedance/sdk/component/Qhi/ROR;->cJ:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Lcom/bytedance/sdk/component/Qhi/Dww;

    move-result-object v4

    .line 54
    iput-object v4, p2, Lcom/bytedance/sdk/component/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Qhi/Dww;

    if-eqz v4, :cond_1

    .line 62
    instance-of v5, v0, Lcom/bytedance/sdk/component/Qhi/Tgh;

    if-eqz v5, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing stateless call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    check-cast v0, Lcom/bytedance/sdk/component/Qhi/Tgh;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/Tgh;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    instance-of v5, v0, Lcom/bytedance/sdk/component/Qhi/ac;

    if-eqz v5, :cond_2

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Processing raw call: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    check-cast v0, Lcom/bytedance/sdk/component/Qhi/ac;

    invoke-direct {p0, p1, v0, v4}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/ac;Lcom/bytedance/sdk/component/Qhi/Dww;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    new-instance p2, Lcom/bytedance/sdk/component/Qhi/tP;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/component/Qhi/tP;-><init>(I)V

    throw p2

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->CJ:Ljava/util/Map;

    iget-object v4, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->CJ:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Qhi/fl$cJ;

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Qhi/fl$cJ;->Qhi()Lcom/bytedance/sdk/component/Qhi/fl;

    move-result-object v0

    .line 73
    iget-object v4, p1, Lcom/bytedance/sdk/component/Qhi/HzH;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/Qhi/fl;->Qhi(Ljava/lang/String;)V

    .line 74
    iget-object v4, p2, Lcom/bytedance/sdk/component/Qhi/ROR;->cJ:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/cJ;)Lcom/bytedance/sdk/component/Qhi/Dww;

    move-result-object v4

    .line 75
    iput-object v4, p2, Lcom/bytedance/sdk/component/Qhi/ROR;->CJ:Lcom/bytedance/sdk/component/Qhi/Dww;

    if-eqz v4, :cond_3

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing stateful call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/fl;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    move-result-object p1

    return-object p1

    .line 77
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Qhi/fl;->CJ()V

    .line 79
    new-instance p2, Lcom/bytedance/sdk/component/Qhi/tP;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/component/Qhi/tP;-><init>(I)V

    throw p2
    :try_end_0
    .catch Lcom/bytedance/sdk/component/Qhi/EBS$Qhi; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received call: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v3

    .line 86
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No remote permission config fetched, call pending: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->fl:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;

    const/4 p2, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v3}, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/Sf$1;)V

    return-object p1
.end method

.method Qhi()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Tgh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Qhi/fl;

    .line 131
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Qhi/fl;->fl()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->Tgh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->CJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ:Lcom/bytedance/sdk/component/Qhi/qMt;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Qhi/qMt;->cJ(Lcom/bytedance/sdk/component/Qhi/bxS$Qhi;)V

    return-void
.end method

.method Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Qhi/Tgh<",
            "**>;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Qhi/Tgh;->Qhi(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->ac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf;->CJ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
