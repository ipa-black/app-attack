.class public final Lorg/apache/oro/text/awk/AwkPattern;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/Pattern;
.implements Ljava/io/Serializable;


# static fields
.field static final _INVALID_STATE:I = -0x1

.field static final _START_STATE:I = 0x1


# instance fields
.field _Dtrans:Ljava/util/Vector;

.field _U:Ljava/util/BitSet;

.field _emptySet:Ljava/util/BitSet;

.field _endPosition:I

.field _endStates:Ljava/util/BitSet;

.field _expression:Ljava/lang/String;

.field _fastMap:[Z

.field _followSet:[Ljava/util/BitSet;

.field _hasBeginAnchor:Z

.field _hasEndAnchor:Z

.field _matchesNullString:Z

.field _nodeList:[Ljava/util/Vector;

.field _numStates:I

.field _options:I

.field _stateList:Ljava/util/Vector;

.field _stateMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/oro/text/awk/SyntaxTree;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_hasEndAnchor:Z

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_expression:Ljava/lang/String;

    iget p1, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endPosition:I

    iget-object p1, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_followSet:[Ljava/util/BitSet;

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_followSet:[Ljava/util/BitSet;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_Dtrans:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateList:Ljava/util/Vector;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endStates:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    iget v2, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    invoke-direct {p1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget-object v2, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_root:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v2}, Lorg/apache/oro/text/awk/SyntaxNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 p1, 0x100

    new-array v2, p1, [I

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_Dtrans:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_Dtrans:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endPosition:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endStates:Ljava/util/BitSet;

    iget v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    :cond_0
    new-instance v2, Lorg/apache/oro/text/awk/DFAState;

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    iget v4, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    invoke-direct {v2, v3, v4}, Lorg/apache/oro/text/awk/DFAState;-><init>(Ljava/util/BitSet;I)V

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateMap:Ljava/util/Hashtable;

    iget-object v4, v2, Lorg/apache/oro/text/awk/DFAState;->_state:Ljava/util/BitSet;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {v2, v2}, Ljava/util/BitSet;->xor(Ljava/util/BitSet;)V

    new-instance v2, Ljava/util/BitSet;

    iget v3, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_emptySet:Ljava/util/BitSet;

    new-array v2, p1, [Ljava/util/Vector;

    iput-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_nodeList:[Ljava/util/Vector;

    move v2, v0

    :goto_0
    if-lt v2, p1, :cond_1

    invoke-virtual {p2}, Lorg/apache/oro/text/awk/SyntaxTree;->createFastMap()[Z

    move-result-object p1

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_fastMap:[Z

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endStates:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_matchesNullString:Z

    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_nodeList:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v2

    move v3, v0

    :goto_1
    iget v4, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    if-lt v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_nodes:[Lorg/apache/oro/text/awk/LeafNode;

    aget-object v4, v4, v3

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/oro/text/awk/LeafNode;->_matches(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/oro/text/awk/AwkPattern;->_nodeList:[Ljava/util/Vector;

    aget-object v4, v4, v2

    iget-object v5, p2, Lorg/apache/oro/text/awk/SyntaxTree;->_nodes:[Lorg/apache/oro/text/awk/LeafNode;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method _createNewState(II[I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/oro/text/awk/DFAState;

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_nodeList:[Ljava/util/Vector;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {v1, v1}, Ljava/util/BitSet;->xor(Ljava/util/BitSet;)V

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_4

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateMap:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/oro/text/awk/DFAState;

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iget v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    invoke-direct {p1, v1, v2}, Lorg/apache/oro/text/awk/DFAState;-><init>(Ljava/util/BitSet;I)V

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateMap:Ljava/util/Hashtable;

    iget-object v2, p1, Lorg/apache/oro/text/awk/DFAState;->_state:Ljava/util/BitSet;

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_Dtrans:Ljava/util/Vector;

    const/16 v1, 0x100

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_emptySet:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    add-int/lit8 p1, p1, -0x1

    aput p1, p3, p2

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget p2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endPosition:I

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_endStates:Ljava/util/BitSet;

    iget p2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_0
    aput v0, p3, p2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_emptySet:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    aput v0, p3, p2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkPattern;->_stateMap:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/oro/text/awk/DFAState;

    iget p1, p1, Lorg/apache/oro/text/awk/DFAState;->_stateNumber:I

    aput p1, p3, p2

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_nodeList:[Ljava/util/Vector;

    aget-object v0, v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/oro/text/awk/LeafNode;

    iget v0, v0, Lorg/apache/oro/text/awk/LeafNode;->_position:I

    iget-object v2, p1, Lorg/apache/oro/text/awk/DFAState;->_state:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkPattern;->_U:Ljava/util/BitSet;

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkPattern;->_followSet:[Ljava/util/BitSet;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method _getStateArray(I)[I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_Dtrans:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getOptions()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_options:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkPattern;->_expression:Ljava/lang/String;

    return-object v0
.end method
