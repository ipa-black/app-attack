.class public Lcom/bytedance/sdk/openadsdk/core/model/pA;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;
    }
.end annotation


# instance fields
.field public ABk:Lorg/json/JSONObject;

.field public final CJ:F

.field public final Gm:Ljava/lang/String;

.field public HzH:Lorg/json/JSONObject;

.field public final Qhi:F

.field public final ROR:I

.field public final Sf:I

.field public final Tgh:J

.field public final WAv:I

.field public final ac:F

.field public final cJ:F

.field public final fl:J

.field public final hm:I

.field public hpZ:I

.field public iMK:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field public kYc:Z

.field public final pA:Z

.field public zc:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Qhi:F

    .line 37
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->cJ:F

    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ac:F

    .line 39
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->CJ:F

    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->fl:J

    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Tgh:J

    .line 42
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ROR:I

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Sf:I

    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hm(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->hm:I

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->WAv:I

    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Gm:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->iMK:Landroid/util/SparseArray;

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->zc(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->pA:Z

    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->zc:I

    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->iMK(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ABk:Lorg/json/JSONObject;

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->pA(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->hpZ:I

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->HzH:Lorg/json/JSONObject;

    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->HzH(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/pA$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/pA;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;)V

    return-void
.end method
