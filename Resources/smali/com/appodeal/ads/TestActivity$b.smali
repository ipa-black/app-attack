.class public final Lcom/appodeal/ads/TestActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/TestActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/TestActivity;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/TestActivity$b;->a:Lcom/appodeal/ads/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/TestActivity$b;->a:Lcom/appodeal/ads/TestActivity;

    .line 1
    iput-boolean p2, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    return-void
.end method
