// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Message.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Message.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - MessageRoot

@implementation MessageRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - MessageRoot_FileDescriptor

static GPBFileDescriptor *MessageRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@""
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Message

@implementation Message

@dynamic version;
@dynamic messageId;
@dynamic time;
@dynamic content;
@dynamic imageURL;
@dynamic fromUser;
@dynamic toUser;
@dynamic type;

typedef struct Message__storage_ {
  uint32_t _has_storage_[1];
  float version;
  Message_MessageType type;
  NSString *content;
  NSString *imageURL;
  NSString *fromUser;
  NSString *toUser;
  uint64_t messageId;
  uint64_t time;
} Message__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "version",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_Version,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Message__storage_, version),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "messageId",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_MessageId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Message__storage_, messageId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "time",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_Time,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Message__storage_, time),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "content",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_Content,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Message__storage_, content),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "imageURL",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_ImageURL,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Message__storage_, imageURL),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fromUser",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_FromUser,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Message__storage_, fromUser),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "toUser",
        .dataTypeSpecific.className = NULL,
        .number = Message_FieldNumber_ToUser,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Message__storage_, toUser),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = Message_MessageType_EnumDescriptor,
        .number = Message_FieldNumber_Type,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Message__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Message class]
                                     rootClass:[MessageRoot class]
                                          file:MessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Message__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\002\t\000\005\010\000\006\010\000\007\006\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Message_Type_RawValue(Message *message) {
  GPBDescriptor *descriptor = [Message descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Message_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetMessage_Type_RawValue(Message *message, int32_t value) {
  GPBDescriptor *descriptor = [Message descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Message_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum Message_MessageType

GPBEnumDescriptor *Message_MessageType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Text\000Image\000Audio\000Connect\000";
    static const int32_t values[] = {
        Message_MessageType_Text,
        Message_MessageType_Image,
        Message_MessageType_Audio,
        Message_MessageType_Connect,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Message_MessageType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Message_MessageType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Message_MessageType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Message_MessageType_Text:
    case Message_MessageType_Image:
    case Message_MessageType_Audio:
    case Message_MessageType_Connect:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)