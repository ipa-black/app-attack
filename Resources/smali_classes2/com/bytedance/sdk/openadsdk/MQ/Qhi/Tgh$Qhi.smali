.class public Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;
.super Ljava/lang/Object;
.source "PAGMrcTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field public Qhi:I

.field public cJ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    .line 138
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->Qhi:I

    return-void
.end method
