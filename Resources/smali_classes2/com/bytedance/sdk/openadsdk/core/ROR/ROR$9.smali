.class Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/View;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

.field final synthetic cJ:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->Qhi:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->cJ:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->Qhi:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$9;->cJ:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method
