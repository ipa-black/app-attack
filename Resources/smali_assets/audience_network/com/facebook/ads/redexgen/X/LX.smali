.class public final Lcom/facebook/ads/redexgen/X/LX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TL;->ACY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TL;)V
    .locals 0

    .line 43563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LX;->A00:Lcom/facebook/ads/redexgen/X/TL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43564
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43565
    return-void
.end method
