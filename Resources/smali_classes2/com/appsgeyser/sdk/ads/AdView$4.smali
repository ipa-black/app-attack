.class Lcom/appsgeyser/sdk/ads/AdView$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdView;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView$4;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView$4;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->setVisibility(I)V

    return-void
.end method
