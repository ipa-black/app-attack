.class Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebArbitrageBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->HzH:Z

    const/4 p1, 0x0

    return p1
.end method
