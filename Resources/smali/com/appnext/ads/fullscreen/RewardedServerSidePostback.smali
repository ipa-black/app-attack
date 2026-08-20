.class public Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bo:Ljava/lang/String;

.field private bp:Ljava/lang/String;

.field private bq:Ljava/lang/String;

.field private br:Ljava/lang/String;

.field private bs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bo:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bp:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bq:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->br:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bo:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bp:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bq:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->br:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRewardsAmountRewarded()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->br:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardsCustomParameter()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bs:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardsRewardTypeCurrency()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardsTransactionId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bo:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardsUserId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bp:Ljava/lang/String;

    return-object v0
.end method

.method protected final p()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "rewardsTransactionId"

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "rewardsUserId"

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "rewardsRewardTypeCurrency"

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "rewardsAmountRewarded"

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->br:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "rewardsCustomParameter"

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setRewardsAmountRewarded(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->br:Ljava/lang/String;

    return-void
.end method

.method public setRewardsCustomParameter(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bs:Ljava/lang/String;

    return-void
.end method

.method public setRewardsRewardTypeCurrency(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bq:Ljava/lang/String;

    return-void
.end method

.method public setRewardsTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bo:Ljava/lang/String;

    return-void
.end method

.method public setRewardsUserId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->bp:Ljava/lang/String;

    return-void
.end method
