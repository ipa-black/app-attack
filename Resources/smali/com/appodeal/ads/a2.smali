.class public final Lcom/appodeal/ads/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/appodeal/ads/a2;->a:Lcom/appodeal/ads/g2;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/appodeal/ads/g2;->p:Z

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/g2;->f()V

    return-void
.end method
