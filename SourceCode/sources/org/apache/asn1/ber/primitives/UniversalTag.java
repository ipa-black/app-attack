package org.apache.asn1.ber.primitives;

import java.util.List;
import java.util.Map;
import org.apache.asn1.ber.TagEnum;
import org.apache.commons.lang.p003enum.EnumUtils;
/* loaded from: classes5.dex */
public class UniversalTag extends TagEnum {
    private static final int BIT_STRING_ID = 3;
    private static final int BMP_STRING_ID = 30;
    private static final int BOOLEAN_ID = 1;
    private static final int BOOLEAN_VAL = 16777216;
    private static final int CHARACTER_STRING_ID = 29;
    private static final int EMBEDDED_PDV_ID = 11;
    private static final int ENUMERATED_ID = 10;
    private static final int EXTERNAL_INSTANCE_OF_ID = 8;
    private static final int GENERALIZED_TIME_ID = 24;
    private static final int GENERAL_STRING_ID = 27;
    private static final int GRAPHIC_STRING_ID = 25;
    private static final int IA5_STRING_ID = 22;
    private static final int INTEGER_ID = 2;
    private static final int NULL_ID = 5;
    private static final int NUMERIC_STRING_ID = 18;
    private static final int OBJECT_DESCRIPTOR_ID = 7;
    private static final int OBJECT_IDENTIFIER_ID = 6;
    private static final int OCTET_STRING_ID = 4;
    private static final int PRINTABLE_STRING_ID = 19;
    private static final int REAL_ID = 9;
    private static final int RELATIVE_OID_ID = 13;
    private static final int RESERVED0_ID = 0;
    private static final int RESERVED0_VAL = 0;
    private static final int RESERVED14_ID = 14;
    private static final int RESERVED15_ID = 15;
    private static final int RESERVED15_VAL = 251658240;
    private static final int RESERVED31_ID = 31;
    private static final int SEQUENCE_SEQUENCE_OF_ID = 16;
    private static final int SEQUENCE_SEQUENCE_OF_VAL = 268435456;
    private static final int SET_SET_OF_ID = 17;
    private static final int TELETEX_STRING_ID = 20;
    private static final int UNIVERSAL_STRING_ID = 28;
    private static final int UTC_TIME_ID = 23;
    private static final int UTF8_STRING_ID = 12;
    private static final int VIDEOTEX_STRING_ID = 21;
    private static final int VISIBLE_STRING_ID = 26;
    static /* synthetic */ Class class$org$apache$asn1$ber$primitives$UniversalTag;
    public static final UniversalTag BOOLEAN = new UniversalTag("BOOLEAN", 16777216, 1);
    public static final UniversalTag RESERVED0 = new UniversalTag("RESERVED0", 0, 0);
    private static final int INTEGER_VAL = 33554432;
    public static final UniversalTag INTEGER = new UniversalTag("INTEGER", INTEGER_VAL, 2);
    private static final int BIT_STRING_VAL = 50331648;
    public static final UniversalTag BIT_STRING = new UniversalTag("BIT_STRING", BIT_STRING_VAL, 3);
    private static final int OCTET_STRING_VAL = 67108864;
    public static final UniversalTag OCTET_STRING = new UniversalTag("OCTET_STRING", OCTET_STRING_VAL, 4);
    private static final int NULL_VAL = 83886080;
    public static final UniversalTag NULL = new UniversalTag("NULL", NULL_VAL, 5);
    private static final int OBJECT_IDENTIFIER_VAL = 100663296;
    public static final UniversalTag OBJECT_IDENTIFIER = new UniversalTag("OBJECT_IDENTIFIER", OBJECT_IDENTIFIER_VAL, 6);
    private static final int OBJECT_DESCRIPTOR_VAL = 117440512;
    public static final UniversalTag OBJECT_DESCRIPTOR = new UniversalTag("OBJECT_DESCRIPTOR", OBJECT_DESCRIPTOR_VAL, 7);
    private static final int EXTERNAL_INSTANCE_OF_VAL = 134217728;
    public static final UniversalTag EXTERNAL_INSTANCE_OF = new UniversalTag("EXTERNAL_INSTANCE_OF", EXTERNAL_INSTANCE_OF_VAL, 8);
    private static final int REAL_VAL = 150994944;
    public static final UniversalTag REAL = new UniversalTag("REAL", REAL_VAL, 9);
    private static final int ENUMERATED_VAL = 167772160;
    public static final UniversalTag ENUMERATED = new UniversalTag("ENUMERATED", ENUMERATED_VAL, 10);
    private static final int EMBEDDED_PDV_VAL = 184549376;
    public static final UniversalTag EMBEDDED_PDV = new UniversalTag("EMBEDDED_PDV", EMBEDDED_PDV_VAL, 11);
    private static final int UTF8_STRING_VAL = 201326592;
    public static final UniversalTag UTF8_STRING = new UniversalTag("UTF8_STRING", UTF8_STRING_VAL, 12);
    private static final int RELATIVE_OID_VAL = 218103808;
    public static final UniversalTag RELATIVE_OID = new UniversalTag("RELATIVE_OID", RELATIVE_OID_VAL, 13);
    private static final int RESERVED14_VAL = 234881024;
    public static final UniversalTag RESERVED14 = new UniversalTag("RESERVED14", RESERVED14_VAL, 14);
    public static final UniversalTag RESERVED15 = new UniversalTag("RESERVED15", 251658240, 15);
    public static final UniversalTag SEQUENCE_SEQUENCE_OF = new UniversalTag("SEQUENCE_SEQUENCE_OF", 268435456, 16);
    private static final int SET_SET_OF_VAL = 285212672;
    public static final UniversalTag SET_SET_OF = new UniversalTag("SET_SET_OF", SET_SET_OF_VAL, 17);
    private static final int NUMERIC_STRING_VAL = 301989888;
    public static final UniversalTag NUMERIC_STRING = new UniversalTag("NUMERIC_STRING", NUMERIC_STRING_VAL, 18);
    private static final int PRINTABLE_STRING_VAL = 318767104;
    public static final UniversalTag PRINTABLE_STRING = new UniversalTag("PRINTABLE_STRING", PRINTABLE_STRING_VAL, 19);
    private static final int TELETEX_STRING_VAL = 335544320;
    public static final UniversalTag TELETEX_STRING = new UniversalTag("TELETEX_STRING", TELETEX_STRING_VAL, 20);
    private static final int VIDEOTEX_STRING_VAL = 352321536;
    public static final UniversalTag VIDEOTEX_STRING = new UniversalTag("VIDEOTEX_STRING", VIDEOTEX_STRING_VAL, 21);
    private static final int IA5_STRING_VAL = 369098752;
    public static final UniversalTag IA5_STRING = new UniversalTag("IA5_STRING", IA5_STRING_VAL, 22);
    private static final int UTC_TIME_VAL = 385875968;
    public static final UniversalTag UTC_TIME = new UniversalTag("UTC_TIME", UTC_TIME_VAL, 23);
    private static final int GENERALIZED_TIME_VAL = 402653184;
    public static final UniversalTag GENERALIZED_TIME = new UniversalTag("GENERALIZED_TIME", GENERALIZED_TIME_VAL, 24);
    private static final int GRAPHIC_STRING_VAL = 419430400;
    public static final UniversalTag GRAPHIC_STRING = new UniversalTag("GRAPHIC_STRING", GRAPHIC_STRING_VAL, 25);
    private static final int VISIBLE_STRING_VAL = 436207616;
    public static final UniversalTag VISIBLE_STRING = new UniversalTag("VISIBLE_STRING", VISIBLE_STRING_VAL, 26);
    private static final int GENERAL_STRING_VAL = 452984832;
    public static final UniversalTag GENERAL_STRING = new UniversalTag("GENERAL_STRING", GENERAL_STRING_VAL, 27);
    private static final int UNIVERSAL_STRING_VAL = 469762048;
    public static final UniversalTag UNIVERSAL_STRING = new UniversalTag("UNIVERSAL_STRING", UNIVERSAL_STRING_VAL, 28);
    private static final int CHARACTER_STRING_VAL = 486539264;
    public static final UniversalTag CHARACTER_STRING = new UniversalTag("CHARACTER_STRING", CHARACTER_STRING_VAL, 29);
    private static final int BMP_STRING_VAL = 503316480;
    public static final UniversalTag BMP_STRING = new UniversalTag("BMP_STRING", BMP_STRING_VAL, 30);
    private static final int RESERVED31_VAL = 520093696;
    public static final UniversalTag RESERVED31 = new UniversalTag("RESERVED31", RESERVED31_VAL, 31);

    private UniversalTag(String str, int i, int i2) {
        super(str, i, i2);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static List list() {
        Class cls = class$org$apache$asn1$ber$primitives$UniversalTag;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.primitives.UniversalTag");
            class$org$apache$asn1$ber$primitives$UniversalTag = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static Map map() {
        Class cls = class$org$apache$asn1$ber$primitives$UniversalTag;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.primitives.UniversalTag");
            class$org$apache$asn1$ber$primitives$UniversalTag = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }

    public static UniversalTag getUniversalTag(int i) {
        String stringBuffer;
        int i2 = i & (-536870913);
        switch (i2) {
            case 0:
                return RESERVED0;
            case 16777216:
                return BOOLEAN;
            case INTEGER_VAL /* 33554432 */:
                return INTEGER;
            case BIT_STRING_VAL /* 50331648 */:
                return BIT_STRING;
            case OCTET_STRING_VAL /* 67108864 */:
                return OCTET_STRING;
            case NULL_VAL /* 83886080 */:
                return NULL;
            case OBJECT_IDENTIFIER_VAL /* 100663296 */:
                return OBJECT_IDENTIFIER;
            case OBJECT_DESCRIPTOR_VAL /* 117440512 */:
                return OBJECT_DESCRIPTOR;
            case EXTERNAL_INSTANCE_OF_VAL /* 134217728 */:
                return EXTERNAL_INSTANCE_OF;
            case REAL_VAL /* 150994944 */:
                return REAL;
            case ENUMERATED_VAL /* 167772160 */:
                return ENUMERATED;
            case EMBEDDED_PDV_VAL /* 184549376 */:
                return EMBEDDED_PDV;
            case UTF8_STRING_VAL /* 201326592 */:
                return UTF8_STRING;
            case RELATIVE_OID_VAL /* 218103808 */:
                return RELATIVE_OID;
            case RESERVED14_VAL /* 234881024 */:
                return RESERVED14;
            case 251658240:
                return RESERVED15;
            case 268435456:
                return SEQUENCE_SEQUENCE_OF;
            case SET_SET_OF_VAL /* 285212672 */:
                return SET_SET_OF;
            case NUMERIC_STRING_VAL /* 301989888 */:
                return NUMERIC_STRING;
            case PRINTABLE_STRING_VAL /* 318767104 */:
                return PRINTABLE_STRING;
            case TELETEX_STRING_VAL /* 335544320 */:
                return TELETEX_STRING;
            case VIDEOTEX_STRING_VAL /* 352321536 */:
                return VIDEOTEX_STRING;
            case IA5_STRING_VAL /* 369098752 */:
                return IA5_STRING;
            case UTC_TIME_VAL /* 385875968 */:
                return UTC_TIME;
            case GENERALIZED_TIME_VAL /* 402653184 */:
                return GENERALIZED_TIME;
            case GRAPHIC_STRING_VAL /* 419430400 */:
                return GRAPHIC_STRING;
            case VISIBLE_STRING_VAL /* 436207616 */:
                return VISIBLE_STRING;
            case GENERAL_STRING_VAL /* 452984832 */:
                return GENERAL_STRING;
            case UNIVERSAL_STRING_VAL /* 469762048 */:
                return UNIVERSAL_STRING;
            case CHARACTER_STRING_VAL /* 486539264 */:
                return CHARACTER_STRING;
            case BMP_STRING_VAL /* 503316480 */:
                return BMP_STRING;
            case RESERVED31_VAL /* 520093696 */:
                return RESERVED31;
            default:
                if (i2 < 31 && i2 > -1) {
                    stringBuffer = "Looks like you're using an id instead of a tag";
                } else {
                    stringBuffer = new StringBuffer("Tag value of ").append(i2).append(" not recognized").toString();
                }
                throw new IllegalArgumentException(stringBuffer);
        }
    }

    public static UniversalTag getUniversalTagById(int i) {
        String str;
        switch (i) {
            case 0:
                return RESERVED0;
            case 1:
                return BOOLEAN;
            case 2:
                return INTEGER;
            case 3:
                return BIT_STRING;
            case 4:
                return OCTET_STRING;
            case 5:
                return NULL;
            case 6:
                return OBJECT_IDENTIFIER;
            case 7:
                return OBJECT_DESCRIPTOR;
            case 8:
                return EXTERNAL_INSTANCE_OF;
            case 9:
                return REAL;
            case 10:
                return ENUMERATED;
            case 11:
                return EMBEDDED_PDV;
            case 12:
                return UTF8_STRING;
            case 13:
                return RELATIVE_OID;
            case 14:
                return RESERVED14;
            case 15:
                return RESERVED15;
            case 16:
                return SEQUENCE_SEQUENCE_OF;
            case 17:
                return SET_SET_OF;
            case 18:
                return NUMERIC_STRING;
            case 19:
                return PRINTABLE_STRING;
            case 20:
                return TELETEX_STRING;
            case 21:
                return VIDEOTEX_STRING;
            case 22:
                return IA5_STRING;
            case 23:
                return UTC_TIME;
            case 24:
                return GENERALIZED_TIME;
            case 25:
                return GRAPHIC_STRING;
            case 26:
                return VISIBLE_STRING;
            case 27:
                return GENERAL_STRING;
            case 28:
                return UNIVERSAL_STRING;
            case 29:
                return CHARACTER_STRING;
            case 30:
                return BMP_STRING;
            case 31:
                return RESERVED31;
            default:
                if (i > 31 || i < 0) {
                    str = "Looks like you're using a tag instead of an id";
                } else {
                    str = new StringBuffer("Id of ").append(i).append(" not recognized as a universal id").toString();
                }
                throw new IllegalArgumentException(str);
        }
    }
}
