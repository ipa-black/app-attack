.class public Lcom/explorestack/iab/utils/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/utils/m;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/utils/m;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/m;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/m$b;->a:Lcom/explorestack/iab/utils/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/m$b;->a:Lcom/explorestack/iab/utils/m;

    invoke-static {v0}, Lcom/explorestack/iab/utils/m;->b(Lcom/explorestack/iab/utils/m;)V

    const/4 v0, 0x1

    return v0
.end method
