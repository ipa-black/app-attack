.class public Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;
.super Ljava/lang/Object;
.source "UGNodeTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/core/ROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private Qhi:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private ac:Lorg/json/JSONObject;

.field private cJ:Ljava/lang/String;

.field private fl:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;)Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->fl:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->Qhi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->ac:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic ac(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->Tgh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->cJ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;)Lorg/json/JSONObject;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->ac:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public CJ()Lorg/json/JSONObject;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->ac:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->CJ:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->CJ:Ljava/util/List;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->CJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public fl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->CJ:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UGNode{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
