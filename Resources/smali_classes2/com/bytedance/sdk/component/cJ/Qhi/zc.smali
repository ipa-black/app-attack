.class public abstract Lcom/bytedance/sdk/component/cJ/Qhi/zc;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    }
.end annotation


# instance fields
.field public CJ:J

.field public Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/hm;",
            ">;"
        }
    .end annotation
.end field

.field public ROR:Ljava/util/concurrent/TimeUnit;

.field public Tgh:J

.field public ac:Ljava/util/concurrent/TimeUnit;

.field public cJ:J

.field public fl:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->cJ:J

    .line 24
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->CJ:J

    .line 25
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Tgh:J

    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi:Ljava/util/List;

    .line 27
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ac:Ljava/util/concurrent/TimeUnit;

    .line 28
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->fl:Ljava/util/concurrent/TimeUnit;

    .line 29
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ROR:Ljava/util/concurrent/TimeUnit;

    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;
.end method

.method public abstract Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/fl;
.end method

.method public cJ()Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    .locals 1

    .line 108
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    return-object v0
.end method
