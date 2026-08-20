.class public final Lorg/apache/commons/collections/primitives/adapters/Adapt;
.super Ljava/lang/Object;
.source "Adapt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toByteCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ByteCollection;
    .locals 0

    .line 182
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionByteCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 0

    .line 190
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorByteIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 0

    .line 186
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListByteList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 0

    .line 194
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorByteListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toCharCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/CharCollection;
    .locals 0

    .line 201
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCharIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 0

    .line 209
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorCharIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toCharList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/CharList;
    .locals 0

    .line 205
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListCharList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p0

    return-object p0
.end method

.method public static final toCharListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 0

    .line 213
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorCharListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;
    .locals 0

    .line 67
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/CharCollection;)Ljava/util/Collection;
    .locals 0

    .line 71
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/CharCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/DoubleCollection;)Ljava/util/Collection;
    .locals 0

    .line 75
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/DoubleCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/DoubleCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/FloatCollection;)Ljava/util/Collection;
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/FloatCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/FloatCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/IntCollection;)Ljava/util/Collection;
    .locals 0

    .line 83
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IntCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/IntCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/LongCollection;)Ljava/util/Collection;
    .locals 0

    .line 87
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/LongCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/LongCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toCollection(Lorg/apache/commons/collections/primitives/ShortCollection;)Ljava/util/Collection;
    .locals 0

    .line 91
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ShortCollection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final toDoubleCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/DoubleCollection;
    .locals 0

    .line 220
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionDoubleCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/DoubleCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toDoubleIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 0

    .line 228
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorDoubleIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toDoubleList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 0

    .line 224
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p0

    return-object p0
.end method

.method public static final toDoubleListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 0

    .line 232
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorDoubleListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/FloatCollection;
    .locals 0

    .line 239
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionFloatCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/FloatCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 0

    .line 247
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorFloatIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/FloatList;
    .locals 0

    .line 243
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListFloatList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 0

    .line 251
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorFloatListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/IntCollection;
    .locals 0

    .line 258
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionIntCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/IntIterator;
    .locals 0

    .line 266
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorIntIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/IntList;
    .locals 0

    .line 262
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIntList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 0

    .line 270
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorIntListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/ByteIterator;)Ljava/util/Iterator;
    .locals 0

    .line 123
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/ByteIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/CharIterator;)Ljava/util/Iterator;
    .locals 0

    .line 127
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CharIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/CharIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/DoubleIterator;)Ljava/util/Iterator;
    .locals 0

    .line 131
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/DoubleIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/FloatIterator;)Ljava/util/Iterator;
    .locals 0

    .line 135
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/FloatIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/IntIterator;)Ljava/util/Iterator;
    .locals 0

    .line 139
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IntIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/IntIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/LongIterator;)Ljava/util/Iterator;
    .locals 0

    .line 143
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/LongIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/LongIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toIterator(Lorg/apache/commons/collections/primitives/ShortIterator;)Ljava/util/Iterator;
    .locals 0

    .line 147
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ShortIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortIterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/ByteList;)Ljava/util/List;
    .locals 0

    .line 95
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ByteListList;->wrap(Lorg/apache/commons/collections/primitives/ByteList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/CharList;)Ljava/util/List;
    .locals 0

    .line 99
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CharListList;->wrap(Lorg/apache/commons/collections/primitives/CharList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/DoubleList;)Ljava/util/List;
    .locals 0

    .line 103
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/DoubleListList;->wrap(Lorg/apache/commons/collections/primitives/DoubleList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/FloatList;)Ljava/util/List;
    .locals 0

    .line 107
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/FloatListList;->wrap(Lorg/apache/commons/collections/primitives/FloatList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/IntList;)Ljava/util/List;
    .locals 0

    .line 111
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IntListList;->wrap(Lorg/apache/commons/collections/primitives/IntList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/LongList;)Ljava/util/List;
    .locals 0

    .line 115
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/LongListList;->wrap(Lorg/apache/commons/collections/primitives/LongList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lorg/apache/commons/collections/primitives/ShortList;)Ljava/util/List;
    .locals 0

    .line 119
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ShortListList;->wrap(Lorg/apache/commons/collections/primitives/ShortList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/ByteListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 151
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ByteListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/ByteListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/CharListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 155
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CharListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/CharListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 159
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/DoubleListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/DoubleListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/FloatListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 163
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/FloatListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/FloatListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/IntListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 167
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/IntListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/LongListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 171
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/LongListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/LongListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toListIterator(Lorg/apache/commons/collections/primitives/ShortListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 175
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/LongCollection;
    .locals 0

    .line 277
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionLongCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/LongCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 0

    .line 285
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/LongList;
    .locals 0

    .line 281
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListLongList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 0

    .line 289
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toShortCollection(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;
    .locals 0

    .line 296
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final toShortIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/ShortIterator;
    .locals 0

    .line 304
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorShortIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final toShortList(Ljava/util/List;)Lorg/apache/commons/collections/primitives/ShortList;
    .locals 0

    .line 300
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListShortList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p0

    return-object p0
.end method

.method public static final toShortListIterator(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 0

    .line 308
    invoke-static {p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorShortListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object p0

    return-object p0
.end method
