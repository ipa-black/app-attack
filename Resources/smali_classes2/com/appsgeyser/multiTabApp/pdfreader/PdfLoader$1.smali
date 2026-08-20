.class Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;
.super Ljava/lang/Object;
.source "PdfLoader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadConfigurator(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$100(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$1;->this$0:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->access$100(Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;)Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;->handleEvent()V

    :cond_0
    return-void
.end method
