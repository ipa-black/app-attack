package com.appodeal.ads.api;

import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class App extends GeneratedMessageV3 implements AppOrBuilder {
    public static final int ACTIVE_APP_UPTIME_FIELD_NUMBER = 14;
    public static final int APP_KEY_FIELD_NUMBER = 7;
    public static final int APP_UPTIME_FIELD_NUMBER = 10;
    public static final int BUNDLE_FIELD_NUMBER = 1;
    public static final int FRAMEWORK_FIELD_NUMBER = 11;
    public static final int FRAMEWORK_VERSION_FIELD_NUMBER = 12;
    public static final int INSTALLER_FIELD_NUMBER = 5;
    public static final int INSTALL_TIME_FIELD_NUMBER = 3;
    public static final int MONOTONIC_APP_UPTIME_FIELD_NUMBER = 13;
    public static final int MULTIDEX_FIELD_NUMBER = 6;
    public static final int PLUGIN_VERSION_FIELD_NUMBER = 4;
    public static final int SDK_FIELD_NUMBER = 8;
    public static final int VERSION_CODE_FIELD_NUMBER = 9;
    public static final int VER_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private long activeAppUptime_;
    private volatile Object appKey_;
    private long appUptime_;
    private volatile Object bundle_;
    private volatile Object frameworkVersion_;
    private volatile Object framework_;
    private long installTime_;
    private volatile Object installer_;
    private byte memoizedIsInitialized;
    private long monotonicAppUptime_;
    private boolean multidex_;
    private volatile Object pluginVersion_;
    private volatile Object sdk_;
    private volatile Object ver_;
    private int versionCode_;
    private static final App DEFAULT_INSTANCE = new App();
    private static final Parser<App> PARSER = new AbstractParser<App>() { // from class: com.appodeal.ads.api.App.1
        @Override // com.explorestack.protobuf.Parser
        public App parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new App(codedInputStream, extensionRegistryLite);
        }
    };

    private App(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private App() {
        this.memoizedIsInitialized = (byte) -1;
        this.bundle_ = "";
        this.ver_ = "";
        this.pluginVersion_ = "";
        this.installer_ = "";
        this.appKey_ = "";
        this.sdk_ = "";
        this.framework_ = "";
        this.frameworkVersion_ = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new App();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private App(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                this.bundle_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 18:
                                this.ver_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.installTime_ = codedInputStream.readInt64();
                                continue;
                            case 34:
                                this.pluginVersion_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 42:
                                this.installer_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 48:
                                this.multidex_ = codedInputStream.readBool();
                                continue;
                            case 58:
                                this.appKey_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 66:
                                this.sdk_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 72:
                                this.versionCode_ = codedInputStream.readInt32();
                                continue;
                            case 80:
                                this.appUptime_ = codedInputStream.readInt64();
                                continue;
                            case 90:
                                this.framework_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 98:
                                this.frameworkVersion_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 104:
                                this.monotonicAppUptime_ = codedInputStream.readInt64();
                                continue;
                            case 112:
                                this.activeAppUptime_ = codedInputStream.readInt64();
                                continue;
                            default:
                                if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_App_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_App_fieldAccessorTable.ensureFieldAccessorsInitialized(App.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getBundle() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bundle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getBundleBytes() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bundle_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getVer() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getVerBytes() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public long getInstallTime() {
        return this.installTime_;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getPluginVersion() {
        Object obj = this.pluginVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.pluginVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getPluginVersionBytes() {
        Object obj = this.pluginVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pluginVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getInstaller() {
        Object obj = this.installer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.installer_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getInstallerBytes() {
        Object obj = this.installer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.installer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    @Deprecated
    public boolean getMultidex() {
        return this.multidex_;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getAppKey() {
        Object obj = this.appKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appKey_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getAppKeyBytes() {
        Object obj = this.appKey_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appKey_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public int getVersionCode() {
        return this.versionCode_;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public long getAppUptime() {
        return this.appUptime_;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getFramework() {
        Object obj = this.framework_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.framework_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getFrameworkBytes() {
        Object obj = this.framework_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.framework_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public String getFrameworkVersion() {
        Object obj = this.frameworkVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.frameworkVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public ByteString getFrameworkVersionBytes() {
        Object obj = this.frameworkVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.frameworkVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    public long getMonotonicAppUptime() {
        return this.monotonicAppUptime_;
    }

    @Override // com.appodeal.ads.api.AppOrBuilder
    @Deprecated
    public long getActiveAppUptime() {
        return this.activeAppUptime_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getBundleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.bundle_);
        }
        if (!getVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.ver_);
        }
        long j = this.installTime_;
        if (j != 0) {
            codedOutputStream.writeInt64(3, j);
        }
        if (!getPluginVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.pluginVersion_);
        }
        if (!getInstallerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.installer_);
        }
        boolean z = this.multidex_;
        if (z) {
            codedOutputStream.writeBool(6, z);
        }
        if (!getAppKeyBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.appKey_);
        }
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.sdk_);
        }
        int i = this.versionCode_;
        if (i != 0) {
            codedOutputStream.writeInt32(9, i);
        }
        long j2 = this.appUptime_;
        if (j2 != 0) {
            codedOutputStream.writeInt64(10, j2);
        }
        if (!getFrameworkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.framework_);
        }
        if (!getFrameworkVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.frameworkVersion_);
        }
        long j3 = this.monotonicAppUptime_;
        if (j3 != 0) {
            codedOutputStream.writeInt64(13, j3);
        }
        long j4 = this.activeAppUptime_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(14, j4);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getBundleBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.bundle_) : 0;
        if (!getVerBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.ver_);
        }
        long j = this.installTime_;
        if (j != 0) {
            computeStringSize += CodedOutputStream.computeInt64Size(3, j);
        }
        if (!getPluginVersionBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.pluginVersion_);
        }
        if (!getInstallerBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.installer_);
        }
        boolean z = this.multidex_;
        if (z) {
            computeStringSize += CodedOutputStream.computeBoolSize(6, z);
        }
        if (!getAppKeyBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.appKey_);
        }
        if (!getSdkBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.sdk_);
        }
        int i2 = this.versionCode_;
        if (i2 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(9, i2);
        }
        long j2 = this.appUptime_;
        if (j2 != 0) {
            computeStringSize += CodedOutputStream.computeInt64Size(10, j2);
        }
        if (!getFrameworkBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(11, this.framework_);
        }
        if (!getFrameworkVersionBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(12, this.frameworkVersion_);
        }
        long j3 = this.monotonicAppUptime_;
        if (j3 != 0) {
            computeStringSize += CodedOutputStream.computeInt64Size(13, j3);
        }
        long j4 = this.activeAppUptime_;
        if (j4 != 0) {
            computeStringSize += CodedOutputStream.computeInt64Size(14, j4);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof App)) {
            return super.equals(obj);
        }
        App app = (App) obj;
        return getBundle().equals(app.getBundle()) && getVer().equals(app.getVer()) && getInstallTime() == app.getInstallTime() && getPluginVersion().equals(app.getPluginVersion()) && getInstaller().equals(app.getInstaller()) && getMultidex() == app.getMultidex() && getAppKey().equals(app.getAppKey()) && getSdk().equals(app.getSdk()) && getVersionCode() == app.getVersionCode() && getAppUptime() == app.getAppUptime() && getFramework().equals(app.getFramework()) && getFrameworkVersion().equals(app.getFrameworkVersion()) && getMonotonicAppUptime() == app.getMonotonicAppUptime() && getActiveAppUptime() == app.getActiveAppUptime() && this.unknownFields.equals(app.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getBundle().hashCode()) * 37) + 2) * 53) + getVer().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getInstallTime())) * 37) + 4) * 53) + getPluginVersion().hashCode()) * 37) + 5) * 53) + getInstaller().hashCode()) * 37) + 6) * 53) + Internal.hashBoolean(getMultidex())) * 37) + 7) * 53) + getAppKey().hashCode()) * 37) + 8) * 53) + getSdk().hashCode()) * 37) + 9) * 53) + getVersionCode()) * 37) + 10) * 53) + Internal.hashLong(getAppUptime())) * 37) + 11) * 53) + getFramework().hashCode()) * 37) + 12) * 53) + getFrameworkVersion().hashCode()) * 37) + 13) * 53) + Internal.hashLong(getMonotonicAppUptime())) * 37) + 14) * 53) + Internal.hashLong(getActiveAppUptime())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public static App parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static App parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static App parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static App parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static App parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static App parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static App parseFrom(InputStream inputStream) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static App parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static App parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static App parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static App parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static App parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(App app) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(app);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AppOrBuilder {
        private long activeAppUptime_;
        private Object appKey_;
        private long appUptime_;
        private Object bundle_;
        private Object frameworkVersion_;
        private Object framework_;
        private long installTime_;
        private Object installer_;
        private long monotonicAppUptime_;
        private boolean multidex_;
        private Object pluginVersion_;
        private Object sdk_;
        private Object ver_;
        private int versionCode_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_App_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_App_fieldAccessorTable.ensureFieldAccessorsInitialized(App.class, Builder.class);
        }

        private Builder() {
            this.bundle_ = "";
            this.ver_ = "";
            this.pluginVersion_ = "";
            this.installer_ = "";
            this.appKey_ = "";
            this.sdk_ = "";
            this.framework_ = "";
            this.frameworkVersion_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.bundle_ = "";
            this.ver_ = "";
            this.pluginVersion_ = "";
            this.installer_ = "";
            this.appKey_ = "";
            this.sdk_ = "";
            this.framework_ = "";
            this.frameworkVersion_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = App.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.bundle_ = "";
            this.ver_ = "";
            this.installTime_ = 0L;
            this.pluginVersion_ = "";
            this.installer_ = "";
            this.multidex_ = false;
            this.appKey_ = "";
            this.sdk_ = "";
            this.versionCode_ = 0;
            this.appUptime_ = 0L;
            this.framework_ = "";
            this.frameworkVersion_ = "";
            this.monotonicAppUptime_ = 0L;
            this.activeAppUptime_ = 0L;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_App_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public App getDefaultInstanceForType() {
            return App.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public App build() {
            App buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public App buildPartial() {
            App app = new App(this);
            app.bundle_ = this.bundle_;
            app.ver_ = this.ver_;
            app.installTime_ = this.installTime_;
            app.pluginVersion_ = this.pluginVersion_;
            app.installer_ = this.installer_;
            app.multidex_ = this.multidex_;
            app.appKey_ = this.appKey_;
            app.sdk_ = this.sdk_;
            app.versionCode_ = this.versionCode_;
            app.appUptime_ = this.appUptime_;
            app.framework_ = this.framework_;
            app.frameworkVersion_ = this.frameworkVersion_;
            app.monotonicAppUptime_ = this.monotonicAppUptime_;
            app.activeAppUptime_ = this.activeAppUptime_;
            onBuilt();
            return app;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder mo142clone() {
            return (Builder) super.mo142clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof App) {
                return mergeFrom((App) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(App app) {
            if (app == App.getDefaultInstance()) {
                return this;
            }
            if (!app.getBundle().isEmpty()) {
                this.bundle_ = app.bundle_;
                onChanged();
            }
            if (!app.getVer().isEmpty()) {
                this.ver_ = app.ver_;
                onChanged();
            }
            if (app.getInstallTime() != 0) {
                setInstallTime(app.getInstallTime());
            }
            if (!app.getPluginVersion().isEmpty()) {
                this.pluginVersion_ = app.pluginVersion_;
                onChanged();
            }
            if (!app.getInstaller().isEmpty()) {
                this.installer_ = app.installer_;
                onChanged();
            }
            if (app.getMultidex()) {
                setMultidex(app.getMultidex());
            }
            if (!app.getAppKey().isEmpty()) {
                this.appKey_ = app.appKey_;
                onChanged();
            }
            if (!app.getSdk().isEmpty()) {
                this.sdk_ = app.sdk_;
                onChanged();
            }
            if (app.getVersionCode() != 0) {
                setVersionCode(app.getVersionCode());
            }
            if (app.getAppUptime() != 0) {
                setAppUptime(app.getAppUptime());
            }
            if (!app.getFramework().isEmpty()) {
                this.framework_ = app.framework_;
                onChanged();
            }
            if (!app.getFrameworkVersion().isEmpty()) {
                this.frameworkVersion_ = app.frameworkVersion_;
                onChanged();
            }
            if (app.getMonotonicAppUptime() != 0) {
                setMonotonicAppUptime(app.getMonotonicAppUptime());
            }
            if (app.getActiveAppUptime() != 0) {
                setActiveAppUptime(app.getActiveAppUptime());
            }
            mergeUnknownFields(app.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.App.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.App.access$1900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.App r3 = (com.appodeal.ads.api.App) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.appodeal.ads.api.App r4 = (com.appodeal.ads.api.App) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.App.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.App$Builder");
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getBundle() {
            Object obj = this.bundle_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bundle_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setBundle(String str) {
            str.getClass();
            this.bundle_ = str;
            onChanged();
            return this;
        }

        public Builder clearBundle() {
            this.bundle_ = App.getDefaultInstance().getBundle();
            onChanged();
            return this;
        }

        public Builder setBundleBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.bundle_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getVer() {
            Object obj = this.ver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getVerBytes() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setVer(String str) {
            str.getClass();
            this.ver_ = str;
            onChanged();
            return this;
        }

        public Builder clearVer() {
            this.ver_ = App.getDefaultInstance().getVer();
            onChanged();
            return this;
        }

        public Builder setVerBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.ver_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public long getInstallTime() {
            return this.installTime_;
        }

        public Builder setInstallTime(long j) {
            this.installTime_ = j;
            onChanged();
            return this;
        }

        public Builder clearInstallTime() {
            this.installTime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getPluginVersion() {
            Object obj = this.pluginVersion_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.pluginVersion_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getPluginVersionBytes() {
            Object obj = this.pluginVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pluginVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setPluginVersion(String str) {
            str.getClass();
            this.pluginVersion_ = str;
            onChanged();
            return this;
        }

        public Builder clearPluginVersion() {
            this.pluginVersion_ = App.getDefaultInstance().getPluginVersion();
            onChanged();
            return this;
        }

        public Builder setPluginVersionBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.pluginVersion_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getInstaller() {
            Object obj = this.installer_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.installer_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getInstallerBytes() {
            Object obj = this.installer_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.installer_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setInstaller(String str) {
            str.getClass();
            this.installer_ = str;
            onChanged();
            return this;
        }

        public Builder clearInstaller() {
            this.installer_ = App.getDefaultInstance().getInstaller();
            onChanged();
            return this;
        }

        public Builder setInstallerBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.installer_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        @Deprecated
        public boolean getMultidex() {
            return this.multidex_;
        }

        @Deprecated
        public Builder setMultidex(boolean z) {
            this.multidex_ = z;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearMultidex() {
            this.multidex_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getAppKey() {
            Object obj = this.appKey_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appKey_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getAppKeyBytes() {
            Object obj = this.appKey_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appKey_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setAppKey(String str) {
            str.getClass();
            this.appKey_ = str;
            onChanged();
            return this;
        }

        public Builder clearAppKey() {
            this.appKey_ = App.getDefaultInstance().getAppKey();
            onChanged();
            return this;
        }

        public Builder setAppKeyBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.appKey_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getSdk() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdk_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setSdk(String str) {
            str.getClass();
            this.sdk_ = str;
            onChanged();
            return this;
        }

        public Builder clearSdk() {
            this.sdk_ = App.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public Builder setSdkBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.sdk_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public int getVersionCode() {
            return this.versionCode_;
        }

        public Builder setVersionCode(int i) {
            this.versionCode_ = i;
            onChanged();
            return this;
        }

        public Builder clearVersionCode() {
            this.versionCode_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public long getAppUptime() {
            return this.appUptime_;
        }

        public Builder setAppUptime(long j) {
            this.appUptime_ = j;
            onChanged();
            return this;
        }

        public Builder clearAppUptime() {
            this.appUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getFramework() {
            Object obj = this.framework_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.framework_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getFrameworkBytes() {
            Object obj = this.framework_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.framework_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setFramework(String str) {
            str.getClass();
            this.framework_ = str;
            onChanged();
            return this;
        }

        public Builder clearFramework() {
            this.framework_ = App.getDefaultInstance().getFramework();
            onChanged();
            return this;
        }

        public Builder setFrameworkBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.framework_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public String getFrameworkVersion() {
            Object obj = this.frameworkVersion_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.frameworkVersion_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public ByteString getFrameworkVersionBytes() {
            Object obj = this.frameworkVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.frameworkVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setFrameworkVersion(String str) {
            str.getClass();
            this.frameworkVersion_ = str;
            onChanged();
            return this;
        }

        public Builder clearFrameworkVersion() {
            this.frameworkVersion_ = App.getDefaultInstance().getFrameworkVersion();
            onChanged();
            return this;
        }

        public Builder setFrameworkVersionBytes(ByteString byteString) {
            byteString.getClass();
            App.checkByteStringIsUtf8(byteString);
            this.frameworkVersion_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        public long getMonotonicAppUptime() {
            return this.monotonicAppUptime_;
        }

        public Builder setMonotonicAppUptime(long j) {
            this.monotonicAppUptime_ = j;
            onChanged();
            return this;
        }

        public Builder clearMonotonicAppUptime() {
            this.monotonicAppUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AppOrBuilder
        @Deprecated
        public long getActiveAppUptime() {
            return this.activeAppUptime_;
        }

        @Deprecated
        public Builder setActiveAppUptime(long j) {
            this.activeAppUptime_ = j;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearActiveAppUptime() {
            this.activeAppUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static App getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<App> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<App> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public App getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
