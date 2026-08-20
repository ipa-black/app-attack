.class public Lcom/explorestack/iab/view/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/view/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/view/a;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/view/a$a;->a:Lcom/explorestack/iab/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/view/a$a;->a:Lcom/explorestack/iab/view/a;

    invoke-static {p1}, Lcom/explorestack/iab/view/a;->b(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/view/a$a;->a:Lcom/explorestack/iab/view/a;

    invoke-static {p1}, Lcom/explorestack/iab/view/a;->b(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/view/a$d;->onCloseClick()V

    :cond_0
    return-void
.end method
