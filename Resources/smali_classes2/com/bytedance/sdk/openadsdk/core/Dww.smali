.class public Lcom/bytedance/sdk/openadsdk/core/Dww;
.super Ljava/lang/Object;
.source "SingleAppData.java"


# static fields
.field private static Qhi:Lcom/bytedance/sdk/openadsdk/core/Dww;


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

.field private Tgh:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

.field private ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private fl:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;
    .locals 1

    .line 30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi:Lcom/bytedance/sdk/openadsdk/core/Dww;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dww;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Dww;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi:Lcom/bytedance/sdk/openadsdk/core/Dww;

    .line 33
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi:Lcom/bytedance/sdk/openadsdk/core/Dww;

    return-object v0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->fl:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->fl:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method public ROR()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    return-object v0
.end method

.method public Tgh()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 70
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    .line 72
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->fl:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    return-void
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/cJ;

    return-object v0
.end method
