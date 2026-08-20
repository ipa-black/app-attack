.class Lio/bidmachine/BidMachine$1;
.super Ljava/lang/Object;
.source "BidMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/BidTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lio/bidmachine/BidTokenCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lio/bidmachine/BidMachine$1;->val$callback:Lio/bidmachine/BidTokenCallback;

    iput-object p2, p0, Lio/bidmachine/BidMachine$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lio/bidmachine/BidMachine$1;->val$callback:Lio/bidmachine/BidTokenCallback;

    iget-object v1, p0, Lio/bidmachine/BidMachine$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/BidTokenCallback;->onCollected(Ljava/lang/String;)V

    return-void
.end method
