.class public final Lcom/appodeal/ads/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/appodeal/ads/i;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/j;->b:Lcom/appodeal/ads/i;

    iput-object p2, p0, Lcom/appodeal/ads/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/appodeal/ads/j;->b:Lcom/appodeal/ads/i;

    iget-object v1, p0, Lcom/appodeal/ads/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/i;->b(Landroid/content/Context;)Lcom/appodeal/ads/i;

    return-void
.end method
