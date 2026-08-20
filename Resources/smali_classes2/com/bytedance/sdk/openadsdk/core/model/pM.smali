.class public Lcom/bytedance/sdk/openadsdk/core/model/pM;
.super Ljava/lang/Object;
.source "VerifyData.java"


# instance fields
.field private CJ:Ljava/lang/String;

.field private Qhi:I

.field private ac:I

.field private cJ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->ac:I

    return v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->Qhi:I

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->CJ:Ljava/lang/String;

    return-void
.end method

.method public ac(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->ac:I

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public cJ(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/pM;->cJ:I

    return-void
.end method
