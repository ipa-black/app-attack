.class public Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;
.super Ljava/lang/Object;
.source "AdSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "fl"
.end annotation


# instance fields
.field public CJ:Z

.field public final Qhi:Landroid/os/Bundle;

.field public ac:Z

.field public final cJ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    .line 758
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->cJ:I

    return-void
.end method
