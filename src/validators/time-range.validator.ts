import {
  ValidationArguments,
  ValidatorConstraint,
  ValidatorConstraintInterface,
  registerDecorator,
} from 'class-validator';

@ValidatorConstraint({ name: 'isValidTimeRangeFormat', async: false })
export class IsValidTimeFormatConstraint
  implements ValidatorConstraintInterface
{
  validate(value: any, args: ValidationArguments) {
    const timeRegex =
      /^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]) - (2[0-3]|[01]?[0-9]):([0-5]?[0-9])$/;

    // Allow an empty string
    if (value === '') {
      return true;
    }

    return typeof value === 'string' && timeRegex.test(value);
  }

  defaultMessage(args: ValidationArguments) {
    return `The time format in ${args.property} must be in the format 'HH:mm - HH:mm' or an empty string`;
  }
}

export function IsValidTimeRangeFormat(validationOptions?: {
  message?: string;
}) {
  return function (object: Record<string, any>, propertyName: string) {
    registerDecorator({
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      constraints: [],
      validator: IsValidTimeFormatConstraint,
    });
  };
}
