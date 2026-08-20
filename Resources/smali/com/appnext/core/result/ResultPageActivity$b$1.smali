.class final Lcom/appnext/core/result/ResultPageActivity$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity$b;->adClicked(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ij:Lcom/appnext/core/result/ResultPageActivity$b;


# direct methods
.method constructor <init>(Lcom/appnext/core/result/ResultPageActivity$b;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->ij:Lcom/appnext/core/result/ResultPageActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->ij:Lcom/appnext/core/result/ResultPageActivity$b;

    iget-object p1, p1, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {p1}, Lcom/appnext/core/result/ResultPageActivity;->f(Lcom/appnext/core/result/ResultPageActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b$1;->ij:Lcom/appnext/core/result/ResultPageActivity$b;

    iget-object p1, p1, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {p1}, Lcom/appnext/core/result/ResultPageActivity;->finish()V

    :cond_0
    return-void
.end method
