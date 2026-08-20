.class public final Lcom/appodeal/ads/w5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/x5;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x5;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/w5;->a:Lcom/appodeal/ads/x5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/w5;->a:Lcom/appodeal/ads/x5;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/x5;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
