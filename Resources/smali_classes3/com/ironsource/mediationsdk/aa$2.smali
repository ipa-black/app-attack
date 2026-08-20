.class final Lcom/ironsource/mediationsdk/aa$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/aa;->b(Lcom/ironsource/mediationsdk/model/Placement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/model/Placement;

.field private synthetic b:Lcom/ironsource/mediationsdk/aa;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/aa;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/aa$2;->b:Lcom/ironsource/mediationsdk/aa;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/aa$2;->a:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$2;->b:Lcom/ironsource/mediationsdk/aa;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$2;->b:Lcom/ironsource/mediationsdk/aa;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/aa$2;->a:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$2;->b:Lcom/ironsource/mediationsdk/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRewardedVideoAdClicked("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/aa$2;->a:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
