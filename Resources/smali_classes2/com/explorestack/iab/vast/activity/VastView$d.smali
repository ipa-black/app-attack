.class public Lcom/explorestack/iab/vast/activity/VastView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$d;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 6

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$d;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p3, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, p3, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    if-nez v0, :cond_2

    iget p3, p3, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_2

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p1

    sget-object p3, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$d;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p3, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget p3, p3, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v1

    int-to-float p2, p2

    sub-float v1, p3, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p2, v2

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Skip percent: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$d;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_1

    float-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/iab/utils/e;->a(II)V

    :cond_1
    cmpg-float p1, v1, v0

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$d;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p2, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput v0, p2, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    invoke-static {p1, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    :cond_2
    :goto_0
    return-void
.end method
