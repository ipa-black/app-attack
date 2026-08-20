.class public Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;
.super Ljava/lang/Object;
.source "LocalSuggestionItem.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;


# instance fields
.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->title:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 11
    :cond_1
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAutocompleteText()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->url:Ljava/lang/String;

    return-object v0
.end method
