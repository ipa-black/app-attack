.class Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;
.super Ljava/lang/Object;
.source "SuggestionsClient.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->getSuggestionsAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

.field final synthetic val$search:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;->this$0:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;->val$search:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const p1, 0x1869f

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;->this$0:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-static {p1, p3}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->access$000(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;->this$0:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->access$100(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;

    move-result-object p2

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;->val$search:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;->onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
