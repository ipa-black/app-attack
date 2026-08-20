.class Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;
.super Ljava/lang/Object;
.source "VastXmlPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qhi"
.end annotation


# instance fields
.field CJ:Ljava/lang/String;

.field Qhi:Ljava/lang/String;

.field ROR:F

.field final Tgh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;"
        }
    .end annotation
.end field

.field ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

.field cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

.field final fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->fl:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->Tgh:Ljava/util/List;

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->ROR:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->fl:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->Tgh:Ljava/util/List;

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->ROR:F

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;)V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->fl:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->Qhi:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$Qhi;

    .line 198
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/Qhi$cJ;

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh$Qhi;->Tgh:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
