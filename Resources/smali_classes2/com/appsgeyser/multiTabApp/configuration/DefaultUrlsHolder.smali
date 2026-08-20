.class public Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;
.super Ljava/lang/Object;
.source "DefaultUrlsHolder.java"


# static fields
.field private static instance:Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;


# instance fields
.field private domains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->domains:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->domains:Ljava/util/ArrayList;

    return-void
.end method

.method private _getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private _isDefaultHost(Ljava/lang/String;)Z
    .locals 2

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;
    .locals 1

    .line 11
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->instance:Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->instance:Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    .line 15
    :cond_0
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->instance:Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    return-object v0
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->containsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->_getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->domains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public containsUrl(Ljava/lang/String;)Z
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultUrl(Ljava/lang/String;)Z
    .locals 1

    .line 46
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPermittedDomain(Ljava/lang/String;)Z
    .locals 2

    .line 54
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->_getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->_isDefaultHost(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
