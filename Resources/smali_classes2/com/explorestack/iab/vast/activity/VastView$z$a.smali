.class public Lcom/explorestack/iab/vast/activity/VastView$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView$z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView$z;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView$z;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$z$a;->a:Lcom/explorestack/iab/vast/activity/VastView$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$z$a;->a:Lcom/explorestack/iab/vast/activity/VastView$z;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView$z;->a(Lcom/explorestack/iab/vast/activity/VastView$z;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView$z;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
