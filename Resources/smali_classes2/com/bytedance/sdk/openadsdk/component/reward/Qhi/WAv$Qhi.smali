.class abstract Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;
.super Ljava/lang/Object;
.source "RewardFullScreenManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Qhi"
.end annotation


# instance fields
.field private Qhi:I

.field private cJ:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$1;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method abstract Qhi(II)V
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 418
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;->Qhi:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;->cJ:I

    if-eq p5, p1, :cond_1

    .line 419
    :cond_0
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;->Qhi:I

    .line 420
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;->cJ:I

    .line 421
    invoke-virtual {p0, p4, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;->Qhi(II)V

    :cond_1
    return-void
.end method
